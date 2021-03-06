/// @file AskapUtil.h
/// @brief Common ASKAP utility functions and classes
///
/// @copyright (c) 2007 CSIRO
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
/// @author Ger van Diepen (gvd AT astron DOT nl)
///

#ifndef ASKAP_UTIL_H
#define ASKAP_UTIL_H

// System includes
#include <ostream>
#include <string>
#include <vector>
#include <list>
#include <sstream>
#include <inttypes.h>

// ASKAPsoft includes
#include <askap/askap/AskapError.h>
#include <askap/askap/CasacoreFwdDefines.h>

// CASACORE
#include <casacore/casa/aips.h>
#include <casacore/casa/Quanta.h>
#include <casacore/casa/Quanta/MVDirection.h>
#include <casacore/measures/Measures/MDirection.h>
#include <casacore/measures/Measures/MPosition.h>
#include <casacore/measures/Measures/MEpoch.h>
#include <casacore/casa/BasicSL/STLIO.h>

namespace askap {

/// Get the hostname of the machine (as per unistd.h gethostname)
/// @param full get the full name with domain or base name
/// @return a string representing the hostname
std::string getHostName(bool full = false);

/// Convert a string to uppercase.
std::string toUpper(std::string s);

/// Convert a string to lowercase.
std::string toLower(std::string s);

/// Round to nearest integer
/// @param x Value to be rounded
static inline int nint(double x)
{ return x > 0 ? int(x + 0.5) : int(x - 0.5); }

/// Round to nearest integer
/// @param x Value to be rounded
static inline int nint(float x)
{ return x > 0 ? int(x + 0.5f) : int(x - 0.5f); }

/// Write a vector to an ostream with a given separator, prefix and postfix.
/// \note operator<<() must be defined for the container elements.
/// @param[in] os output stream
/// @param[in] ctr container to work with (type is the template parameter)
/// @param[in] separator separator between elements
/// @param[in] prefix string printed before the elements
/// @param[in] postfix string printed after all elements
/// @param[in] lengthLimit maximum number of elements to print, if exceeded only elements at the
///            start and at the end are shown. It shouldn't be less than showAtEnd defined in the code. Zero is the special value
///            meaning to show all elements
template<typename Container>
void printContainer(std::ostream& os, const Container& ctr,
                    const char* separator = ",",
                    const char* prefix = "[", const char* postfix = "]", const size_t lengthLimit = 0)
{
    os << prefix;

    const size_t showAtEnd = 5;
    if (lengthLimit > 0) {
        ASKAPDEBUGASSERT(lengthLimit > showAtEnd);
    }

    size_t counter = 1;
    for (typename Container::const_iterator it = ctr.begin();
            it != ctr.end(); ++it, ++counter) {
         if (it != ctr.begin()) {
            os << separator;
         }

         os << *it;

         if ((counter == lengthLimit) && (counter + showAtEnd  + 1 < ctr.size())) {
             // need to advance iterator to skip some elements
             const size_t elementsToSkip = ctr.size() - lengthLimit - showAtEnd;
             ASKAPDEBUGASSERT(elementsToSkip > 0);
             os << separator << "....";
             // another increment happens in the for statement, so advance the iterator by one less step
             // do increments in a generic way as some containers do not support random access
             for (size_t el = 1; el < elementsToSkip; ++el, ++it) {
                  ASKAPDEBUGASSERT(it != ctr.end());
             }
	     }
    }
    os << postfix;
}

/// @brief a helper method to print directions nicely
/// @details By default an instance of casacore::MVDirection is printed
/// as 3 direction cosines. It is not very convenient. This method
/// allows to print it in a more log-reader-friendly way.
/// This is the only method in this file (so far) which introduces
/// dependency on casacore. It can be moved to a separate sub-package
/// if necessary
/// @param[in] dir MVDirection object to print
/// @return a string containing a nice representation of the direction
std::string printDirection(const casacore::MVDirection &dir);

/// @brief a helper function to print the latitude component of
/// an MDirection
/// @param[in] dir MVDirection object to print
/// @return a string containing a nice representation of the latitude component
std::string printLat(const casacore::MDirection& dir);

/// @brief a helper function to print the longitude component of
/// an MDirection
/// @param[in] dir MVDirection object to print
/// @return a string containing a nice representation of the longitude component
std::string printLon(const casacore::MDirection& dir);

/// @brief Interpret string as a quantity.
/// Interpret a string such as "2.5arcsec" as a casacore::Quantity
///
/// @param[in] s    String to be interpreted
/// @param[in] unit ensure the constructed quantity conforms to
///                 units of this type.
/// @throw AskapError   if the string "s" cannot be interpreted as
///                     a quantity which conforms to the units specified
///                     by the "unit" parameters.
casacore::Quantity asQuantity(const std::string& s,
        const std::string& unit = "");

/// @brief Interpret string as an MEpoch
/// @param[in] epoch String to be interpreted
casacore::MEpoch asMEpoch(const std::vector<std::string>& epoch);

/// @brief Interpret string vector as an MDirection
/// The string vector shall have RA in the first element, declination in
/// the second and reference frame in the third. For example:
/// [12h30m00.00, -45.00.00.00, J2000]
/// @param[in] direction String to be interpreted
casacore::MDirection asMDirection(const std::vector<std::string>& direction);

/// @brief Convert a string representation of a position to a
/// casacore::MPosition. Syntax for the position string is:
/// @verbatim
/// [latitude, longitude, altitude, type]
/// @endverbatim
///
/// For example:
/// @verbatim
/// [+117.471deg, -25.692deg, 192m, WGS84]
/// @endverbatim
/// Supported types are WGS84 and ITRF.
///
/// @param[in] position String to be interpreted
/// @return an MPosition
casacore::MPosition asMPosition(const std::vector<std::string>& position);

/// a number of helper functions are gathered in this namespace
namespace utility {

// comments from Max Voronkov:
// probably something like this exists somewhere in the Blob support.
// I grabbed this code from one of my old programs to speed up the development.
// It sat for a while inside GainCalibrationEquation, but now I need it in
// other unrelated classes, so the code has been moved here.
// If the same code exists somewhere else in askap,
// we can switch to use that code instead.

/// @brief helper method to interpret string
/// @details any type supported by the input stream can be converted
/// using this method (e.g. string to numbers)
/// @param[in] str input string
/// @return result of the conversion
/// @exception AskapError is thrown if the conversion failed
template<class T> T fromString(const std::string &str)
{
    std::istringstream is(str);
    T buf;
    is >> buf;

    if (!is) {
        ASKAPTHROW(AskapError, "Unable to convert " << str);
    }

    return buf;
}

/// @brief helper method to convert any type (e.g. numbers) to a string
/// @details any type supported by the input stream can be converted
/// using this method.
/// @param[in] in a const reference to the value to convert
/// @return resulting string
/// @exception AskapError is thrown if the conversion failed
template<class T> std::string toString(const T &in) 
{
    std::ostringstream os;
    os << in;

    if (!os) {
        ASKAPTHROW(AskapError, "Unable to convert " << in << " to string");
    }

    return os.str();
}

/// @brief helper class - null deleter
/// @details To prevent boost::shared_ptr from disposing of an object
/// passed by reference. This class used to be declared inside the data accessor, but
/// apparently there is a need for a wider visibility of this method. We can strip the
/// code into a separate file later, if it is really needed.
struct NullDeleter {
    /// @brief dummy method, does nothing
    void operator()(void const *) const {}
};

} // namespace utility

/// @brief static constant initialised with the number of microseconds per day
static const uint64_t microsecondsPerDay = 86400000000ull;

/// @brief convert BAT to UTC Epoch via casa
/// @param[in] bat BAT as 64-bit integer
/// @return casa epoch measure in the UTC frame
casacore::MEpoch bat2epoch(const uint64_t &bat);


/// @brief convert casa Epoch to BAT
/// @param[in] epoch casa epoch measure, typically in UTC frame, but can be anything supported by casa
/// @return BAT as 64-bit integer
uint64_t epoch2bat(const casacore::MEpoch &epoch);

/// @brief helper method to check the TAI_UTC measures table version
/// @details casacore measures data need to be updated regularly. The TAI_UTC
/// table seems to be the one most frequently updated. However, its version and
/// date, although checked by internal measures routines, are not accessible
/// directly using casacore methods. This method does this to allow these details
/// to be monitored.
/// @note No caching has been done, but this information is expected to be
/// accessed very infrequently (i.e. once per scheduling block). The code
/// could, in principle, be pushed into casacore. An exception is thrown if
/// the code is unable to access the appropriate measures database table
/// @return a pair with table date MJD (first) and the version string (second)
std::pair<double, std::string> measuresTableVersion();

/// @brief helper method to check the validity of measures data
/// @details casacore measures data need to be updated regulargly. Although
/// different data are updated at different cadence, looking for dUT1 seems to be
/// the fastest way to catch the issue. This method attemts to get dUT1 through
/// low-level get method of the casacore, same as for dUT1 method of MeasTable
/// class, but check the validity flag and ignores the result. The casacore's
/// dUT1 method only uses the validity flag to give the warning and doesn't allow
/// the user of the library to access it. The code could, in principle, be pushed
/// into casacore.
/// @note No caching has been done, but this method is expected to be accessed
/// very infrequently (i.e. once per scheduling block).
/// @param[in] mjd Modified Julian Date to check
bool measuresValid(double mjd);


// Now defined in the casa package
//namespace std {
/// @name operator<< Extensions
/// Print the contents of a vector or list.
///
/// Enclose it in square brackets, using a comma as separator.
/// \note operator<<() must be defined for type \c T.
//@{
template<typename T>
inline std::ostream& operator<<(std::ostream& os, const std::vector<T>& c)
{   
  casacore::showContainer(os, c, ",", "[", "]");
  return os;
}
template<typename T>
inline std::ostream& operator<<(std::ostream& os, const std::list<T>& c)
{
  casacore::showContainer(os, c, ",", "[", "]");
  return os;
}

template<typename T, typename U>
inline std::ostream& operator<<(std::ostream& os, const std::map<T,U>& m)
{
  casacore::showContainer (os, m, ", ", "{", "}");
  return os;
}


//@}
//} // end namespace std
} // end namespace askap
#endif
