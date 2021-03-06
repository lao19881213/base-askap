/// @file
/// @brief ASKAP global types
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
/// @author Malte Marquarding <Malte.Marquarding@csiro.au>


#ifndef ASKAP_ASKAPTYPES_H
#define ASKAP_ASKAPTYPES_H

#include <sys/types.h>

namespace askap {
  // Use sys/types.h where available
  /// @name Sized types
  /// typedefs and imports for sized types
  ///
  /// \b ulong
  ///
  /// \b uint
  ///
  /// \b ushort
  //@{
  using ::ushort;
  using ::uint;

  // Apple doesn't define uLong
#if defined(__APPLE__)
  typedef unsigned long        ulong;
#else
  using ::ulong;
#endif
  typedef unsigned char        uchar;
  typedef long long            longlong;
  typedef unsigned long long   ulonglong;
  typedef long double          ldouble;
  typedef char                 int8;
  typedef unsigned char        uint8;
  typedef short                int16;
  typedef int                  int32;
  typedef long long            int64;
  typedef unsigned short       uint16;
  typedef unsigned int         uint32;
  typedef unsigned long long   uint64;
  //@}

}

#endif
