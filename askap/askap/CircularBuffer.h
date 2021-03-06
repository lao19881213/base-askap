/// @file CircularBuffer.h
///
/// @copyright (c) 2010 CSIRO
/// Australia Telescope National Facility (ATNF)
/// Commonwealth Scientific and Industrial Research Organisation (CSIRO)
/// PO Box 76, Epping NSW 1710, Australia
/// atnf-enquiries@csiro.au
///
/// This file is part of the ASKAP software distribution.
///
/// The ASKAP software distribution is free software: you can redistribute it
/// and/or modify it under the terms of the GNU General Public License as
/// published by the Free Software Foundation; either version 2 of the License,
/// or (at your option) any later version.
///
/// This program is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
/// GNU General Public License for more details.
///
/// You should have received a copy of the GNU General Public License
/// along with this program; if not, write to the Free Software
/// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
///
/// @author Ben Humphreys <ben.humphreys@csiro.au>

#ifndef ASKAP_CP_INGEST_CIRCULARBUFFER_H
#define ASKAP_CP_INGEST_CIRCULARBUFFER_H

// ASKAPsoft includes
#include "boost/shared_ptr.hpp"
#include "boost/thread/mutex.hpp"
#include "boost/thread/condition.hpp"
#include "boost/date_time/posix_time/posix_time.hpp"
#include "boost/circular_buffer.hpp"

namespace askap {
namespace utility {

/// @brief A simple thread safe circular buffer.
template<class T>
class CircularBuffer {
    public:

        /// @brief Constructor.
        /// @param[in] bufSize  the maximum number of elements (of type T)
        ///                     that the circular buffer can contain.
        CircularBuffer(const unsigned int bufSize) {
            if (bufSize > 0) {
                itsBuffer.set_capacity(bufSize);
            } else {
                itsBuffer.set_capacity(1);
            }
        };

        /// @brief Destructor.
        ~CircularBuffer() {};

        /// @brief Add an element to the cirtular buffer.
        /// @param[in]  obj a pointer to be added to the circular
        ///                 buffer. The pointer is added to the "back"
        ///                 of the buffer.
        void add(const boost::shared_ptr<T> obj) {
            // Add a pointer to the message to the back of the circular burrer
            boost::mutex::scoped_lock lock(itsMutex);
            itsBuffer.push_back(obj);

            // Notify any waiters
            lock.unlock();
            itsCondVar.notify_all();
        };

        /// @brief Get the next object from the "front" of the circular
        /// buffer.
        /// Calling this method pops the pointer from the buffer.
        ///
        /// @param[in] timeout how long to wait for data before returning
        ///         a null pointer, in the case where the
        ///         buffer is empty. The timeout is in microseconds,
        ///         and anything less than zero will result in no
        ///         timeout (i.e. blocking functionality). A timeout of zero
        ///         will result in a non-blocking call.
        boost::shared_ptr<T> next(const long timeout = -1) {
            boost::mutex::scoped_lock lock(itsMutex);
            while (itsBuffer.empty()) {
                // While this call sleeps/blocks the mutex is released
                if (timeout >= 0) {
                    // don't bother adjusting the wait time - it doesn't really matter in all our applications
                    // checking the output protects against spurious wake ups
                    const bool timeoutOccurred = !itsCondVar.timed_wait(lock, boost::posix_time::microseconds(timeout));

                    if (itsBuffer.empty() && timeoutOccurred) {
                        return boost::shared_ptr<T>(); // Null pointer
                    }
                } else {
                    itsCondVar.wait(lock);
                }
            }

            // Get the pointer on the front of the circular buffer
            boost::shared_ptr<T> obj(itsBuffer[0]);
            itsBuffer.pop_front();

            // Notify any waiters
            lock.unlock();
            itsCondVar.notify_all();

            return obj;
        };

        /// @brief add when there is free space in the buffer
        /// @details Sometimes it is required to use the circular buffer as a
        /// loss-less container, i.e. to delay adding new items if the container
        /// is full. This method adds an item when there is space and waits otherwise.
        /// @param[in]  obj a pointer to be added to the circular
        ///                 buffer. The pointer is added to the "back"
        ///                 of the buffer.
        /// @param[in] timeout how long to wait for the opportunity to add data.
        ///         The timeout is in microseconds,
        ///         and anything less than zero will result in no
        ///         timeout (i.e. blocking functionality). A timeout of zero
        ///         will result in a non-blocking call.
        /// @return true, if addition is successful; return of false indicates the timeout.
        bool addWhenThereIsSpace(const boost::shared_ptr<T> obj, const long timeout = -1) {
            boost::mutex::scoped_lock lock(itsMutex);
            while (itsBuffer.size() == itsBuffer.capacity()) {
                // While this call sleeps/blocks the mutex is released
                if (timeout >= 0) {
                    // don't bother adjusting the wait time - it doesn't really matter in all our applications
                    // checking the output protects against spurious wake ups
                    const bool timeoutOccurred = !itsCondVar.timed_wait(lock, boost::posix_time::microseconds(timeout));

                    if (timeoutOccurred && (itsBuffer.size() == itsBuffer.capacity())) {
                        return false; // Timeout ocurred
                    }
                } else {
                    itsCondVar.wait(lock);
                }
            }
            itsBuffer.push_back(obj);

            // Notify any waiters
            lock.unlock();
            itsCondVar.notify_all();
            
            return true;
        }
 
        /// @brief wait for the buffer to become empty
        /// @details Lock the calling thread until the buffer becomes empty or timeout occurs
        /// @param[in] timeout how long to wait for the buffer to become empty
        ///         The timeout is in microseconds,
        ///         and anything less than zero will result in no
        ///         timeout (i.e. blocking functionality). A timeout of zero
        ///         will result in a non-blocking call.
        /// @return true, if wait was successful; return of false indicates the timeout.
        bool waitUntilEmpty(const long timeout = -1) const {
            boost::mutex::scoped_lock lock(itsMutex);
            while (itsBuffer.size() != 0) {
                // While this call sleeps/blocks the mutex is released
                if (timeout >= 0) {
                    // don't bother adjusting the wait time - it doesn't really matter in all our applications
                    // checking the output protects against spurious wake ups
                    const bool timeoutOccurred = !itsCondVar.timed_wait(lock, boost::posix_time::microseconds(timeout));

                    if (timeoutOccurred && (itsBuffer.size() != 0)) {
                        return false; // Timeout ocurred
                    }
                } else {
                    itsCondVar.wait(lock);
                }
            }
            return true;
        }

        void clear(void) {
            boost::mutex::scoped_lock lock(itsMutex);
            itsBuffer.clear();
            // Notify any waiters
            lock.unlock();
            itsCondVar.notify_all();
        }
        

        /// @brief Returns the number of items in the circular buffer
        size_t size(void) const {
            boost::mutex::scoped_lock lock(itsMutex);
            return itsBuffer.size();
        }

        /// @brief Returns the capacity of the circular buffer
        size_t capacity(void) const {
            boost::mutex::scoped_lock lock(itsMutex);
            return itsBuffer.capacity();
        }

    private:
        /// The circular buffer this class wraps
        boost::circular_buffer< boost::shared_ptr<T> > itsBuffer;

        // Mutex used for synchronisation between threads
        // This is mutable so the "size() const" method can use it
        mutable boost::mutex itsMutex;

        // Condition variable user for synchronisation between threads
        mutable boost::condition itsCondVar;
};

}
}

#endif
