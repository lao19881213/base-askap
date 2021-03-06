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

// ASKAPsoft includes
#include <askap/askap/AskapTestRunner.h>

// Test includes
#include <askap_askap.h>
#include <IndexedCompareTest.h>
#include <AskapErrorTest.h>
#include <MapKeyIteratorTest.h>
#include <AskapUtilTest.h>
#include <SignalManagerTest.h>
#include <SignalCounterTest.h>
#include <IndexConverterTest.h>
#include "CircularBufferTest.h"
#include "RangePartitionTest.h"


BOOST_CONSTEXPR_OR_CONST double askap::AskapUtilTest::dblTolerance;

int main(int argc, char *argv[])
{
    askapdev::testutils::AskapTestRunner runner(argv[0]);

    runner.addTest(askap::utility::IndexedLessTest::suite());
    runner.addTest(askap::AskapErrorTest::suite());
    runner.addTest(askap::utility::MapKeyIteratorTest::suite());
    runner.addTest(askap::AskapUtilTest::suite());
    runner.addTest(askap::SignalManagerTest::suite());
    runner.addTest(askap::SignalCounterTest::suite());
    runner.addTest(askap::utility::IndexConverterTest::suite());
    runner.addTest(askap::utility::CircularBufferTest::suite());
    runner.addTest(askap::utility::RangePartitionTest::suite());

    bool wasSucessful = runner.run();

    return wasSucessful ? 0 : 1;
}
