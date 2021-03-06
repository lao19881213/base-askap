/// @file
///
/// @brief This file contains tests for macros defined in AskapError.
/// @details The tests cover the ASKAPASSERT and ASKAPCHECK macros
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
/// @author Max Voronkov <Maxim.Voronkov@csiro.au>

#ifndef ASKAP_UTIL_TEST_H
#define ASKAP_UTIL_TEST_H

#include <cppunit/extensions/HelperMacros.h>
#include <boost/config.hpp>

// Class under test
#include <askap/askap/AskapUtil.h>

namespace askap {

class AskapUtilTest : public CppUnit::TestFixture {

        CPPUNIT_TEST_SUITE(AskapUtilTest);
        CPPUNIT_TEST(testNint);
        CPPUNIT_TEST(testAsMDirection);
        CPPUNIT_TEST(testAsMDirectionLatConversion);
        CPPUNIT_TEST(testAsQuantity);
        CPPUNIT_TEST(testAsQuantityException);
        CPPUNIT_TEST(testBATConversions);
//        CPPUNIT_TEST(testMeasTabVersion);
        CPPUNIT_TEST(testPrintLon);
        CPPUNIT_TEST(testPrintLat);
        CPPUNIT_TEST_SUITE_END();

    public:
        void testV(double vScaled) {
            // section of the gridder code for debugging
            const int oversample = 4;
            int iv = askap::nint(vScaled);
            int fracv = askap::nint(oversample * (double(iv) - vScaled));

            if (fracv < 0) {
                iv += 1;
                //fracv+=oversample;
            }

            if (fracv >= oversample) {
                iv -= 1;
                //fracv-=oversample;
            }

            fracv = askap::nint(oversample * (double(iv) - vScaled));
            ASKAPCHECK(fracv > -1, "Fractional offset in v is negative, vScaled="
                    << " iv=" << iv << " oversample=" << oversample << " fracv=" << fracv);
            ASKAPCHECK(fracv < oversample, "Fractional offset in v exceeds oversampling, vScaled="
                    << vScaled << " iv=" << iv << " oversample=" << oversample << " fracv=" << fracv);
            //std::cerr<<vScaled<<" "<<iv<<" "<<fracv<<" "<<double(iv)-double(fracv)/double(oversample)<<std::endl;
        }

        void testNint() {
            const double testvals[] = {0.9, 2.2, 4.499999, 4.5, -0.1, -0.5, -3.9, 0.499999, -1.49999, -1.500001};
            const int results[] = {1, 2, 4, 5, 0, -1, -4, 0, -1, -2};
            const size_t nVal = 9;

            for (size_t i = 0; i < nVal; ++i) {
                CPPUNIT_ASSERT(askap::nint(testvals[i]) == results[i]);
                CPPUNIT_ASSERT(askap::nint(float(testvals[i])) == results[i]);
                CPPUNIT_ASSERT(askap::nint(-testvals[i]) == -results[i]);
                CPPUNIT_ASSERT(askap::nint(-float(testvals[i])) == -results[i]);
            }

            testV(-272.75);

            for (size_t i = 0; i < 200; ++i) {
                double val = -273 + double(i) / 100.;
                testV(val);
            }
        }

        void testAsMDirection() {
            std::vector<std::string> input;
            input.push_back("12h30m00.00");
            input.push_back("-45.00.00.0");
            input.push_back("J2000");

            const casacore::MDirection dir = asMDirection(input);
            CPPUNIT_ASSERT_DOUBLES_EQUAL(-172.5, dir.getAngle("deg").getValue()(0),
                                         dblTolerance);
            CPPUNIT_ASSERT_DOUBLES_EQUAL(-45.0, dir.getAngle("deg").getValue()(1),
                                         dblTolerance);
        }

        void testAsMDirectionLatConversion() {
            std::vector<std::string> testvals;
            testvals.push_back("-45:00:0.0");
            testvals.push_back("-45:00:00.0");
            testvals.push_back("-45:00:00");
            testvals.push_back("-45:00");

            testvals.push_back("-45d00m0.0");
            testvals.push_back("-45d00m");
            testvals.push_back("-45d");

            testvals.push_back("-45.00.00.0");
            testvals.push_back("-45.00.0");

            for (std::vector<std::string>::const_iterator it = testvals.begin();
                    it != testvals.end(); ++it) {
                std::vector<std::string> input;
                input.push_back("12h30m00.00");
                input.push_back(*it);
                input.push_back("J2000");

                const casacore::MDirection dir = asMDirection(input);
                CPPUNIT_ASSERT_DOUBLES_EQUAL(-172.5, dir.getAngle("deg").getValue()(0),
                        dblTolerance);
                CPPUNIT_ASSERT_DOUBLES_EQUAL(-45.0, dir.getAngle("deg").getValue()(1),
                        dblTolerance);
            }
        }

        void testAsQuantity() {
            casacore::Quantum<casacore::Double> output = asQuantity("2.5arcsec", "arcsec");
            CPPUNIT_ASSERT(output.isConform("arcsec"));
            CPPUNIT_ASSERT(output.isConform("arcmin"));
            CPPUNIT_ASSERT(output.isConform("deg"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(2.5, output.getValue(), dblTolerance);

            output = asQuantity("180 deg", "deg");
            CPPUNIT_ASSERT(output.isConform("arcsec"));
            CPPUNIT_ASSERT(output.isConform("arcmin"));
            CPPUNIT_ASSERT(output.isConform("deg"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(180.0, output.getValue(), dblTolerance);

            output = asQuantity("12h30m00.00", "deg");
            CPPUNIT_ASSERT(output.isConform("arcsec"));
            CPPUNIT_ASSERT(output.isConform("arcmin"));
            CPPUNIT_ASSERT(output.isConform("deg"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(187.5, output.getValue(), dblTolerance);

            output = asQuantity("-45.00.00.00", "deg");
            CPPUNIT_ASSERT(output.isConform("arcsec"));
            CPPUNIT_ASSERT(output.isConform("arcmin"));
            CPPUNIT_ASSERT(output.isConform("deg"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(-45.0, output.getValue(), dblTolerance);

            output = asQuantity("1.420GHz", "GHz");
            CPPUNIT_ASSERT(output.isConform("Hz"));
            CPPUNIT_ASSERT(output.isConform("MHz"));
            CPPUNIT_ASSERT(output.isConform("GHz"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(1.420, output.getValue(), dblTolerance);

            output = asQuantity("304MHz", "MHz");
            CPPUNIT_ASSERT(output.isConform("Hz"));
            CPPUNIT_ASSERT(output.isConform("MHz"));
            CPPUNIT_ASSERT(output.isConform("GHz"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(304, output.getValue(), dblTolerance);

            output = asQuantity("1mJy", "mJy");
            CPPUNIT_ASSERT(output.isConform("Jy"));
            CPPUNIT_ASSERT_DOUBLES_EQUAL(1, output.getValue(), dblTolerance);
        }

        void testAsQuantityException() {
            CPPUNIT_ASSERT_THROW(asQuantity("2.5GHz", "arcsec"), askap::AskapError);
            CPPUNIT_ASSERT_THROW(asQuantity("180deg", "Hz"), askap::AskapError);
            CPPUNIT_ASSERT_THROW(asQuantity("180deg", "Jy"), askap::AskapError);
            CPPUNIT_ASSERT_THROW(asQuantity("1mJy", "Hz"), askap::AskapError);
        }

        void testBATConversions() {
            std::vector<std::string> epochVec(2);
            epochVec[0] = "2007Mar07/10:20:30";
            epochVec[1] = "UTC";
            casacore::MEpoch epoch = asMEpoch(epochVec);
            CPPUNIT_ASSERT_EQUAL(54166, static_cast<int>(epoch.getValue().get()));
            
            const uint64_t bat = epoch2bat(epoch);
            const uint64_t batCompare = microsecondsPerDay * 54166 + 1000000ull * (33 /* leap seconds in 2007 */ + 30 +
                           60 * (20 + 60 * 10));
            CPPUNIT_ASSERT_EQUAL(batCompare, bat);
            casacore::MVEpoch epoch2 = bat2epoch(bat).getValue();
            CPPUNIT_ASSERT_DOUBLES_EQUAL(epoch.getValue().get(), epoch2.get(), dblTolerance);
        }
        
        void testMeasTabVersion() {
            const std::pair<double, std::string> info = measuresTableVersion();
            // the following assumes we run unit tests with a slice of measures stored in Base
            // (for consistency of unit testing we don't test against the most up to date measures database):
            CPPUNIT_ASSERT_DOUBLES_EQUAL(59184.6, info.first, 0.1);
            CPPUNIT_ASSERT_EQUAL(std::string("0075.0000"), info.second);
        }

        void testPrintLon() {
            std::vector<std::string> input;
            input.push_back("12h30m00.00");
            input.push_back("-45.00.00.00");
            input.push_back("J2000");

            const casacore::MDirection dir = asMDirection(input);
            CPPUNIT_ASSERT_EQUAL(std::string("12:30:00.00"), askap::printLon(dir));
        }

        void testPrintLat() {
            std::vector<std::string> input;
            input.push_back("12h30m00.00");
            input.push_back("-45.00.00.00");
            input.push_back("J2000");

            const casacore::MDirection dir = asMDirection(input);
            CPPUNIT_ASSERT_EQUAL(std::string("-045.00.00.00"), askap::printLat(dir));
        }

    private:

        static BOOST_CONSTEXPR_OR_CONST double dblTolerance = 10e-14;

};

} // namespace askap

#endif // #ifndef
