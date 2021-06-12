# Install script for directory: /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/app/askapsoft/cpu/mpich/3.2.1")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/askap/askap" TYPE FILE FILES
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Application.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapError.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapLogging.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapTypes.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapTestRunner.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapUtil.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/CasacoreFwdDefines.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/CasaSyncHelper.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/CircularBuffer.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/ISignalHandler.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/IndexConverter.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/IndexedCompare.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Log4cxxLogSink.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/MapKeyIterator.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/RangePartition.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalCounter.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalManagerSingleton.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/StatReporter.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/askap/profile" TYPE FILE FILES
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/../profile/AskapProfiler.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/../profile/ProfileData.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/../profile/ProfileNode.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/../profile/ProfileSingleton.h"
    "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/../profile/ProfileTree.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so"
         RPATH "/home/app/askapsoft/cpu/mpich/3.2.1/lib:/home/app/wsclib/6.2/cpu/lib:/home/app/cfitsio/cpu/lib:/home/app/hdf5/1.10.4/cpu/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap/libaskap_askap.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so"
         OLD_RPATH "/home/app/askapsoft/cpu/mpich/3.2.1/lib:/home/app/wsclib/6.2/cpu/lib:/home/app/cfitsio/cpu/lib:/home/app/hdf5/1.10.4/cpu/lib:"
         NEW_RPATH "/home/app/askapsoft/cpu/mpich/3.2.1/lib:/home/app/wsclib/6.2/cpu/lib:/home/app/cfitsio/cpu/lib:/home/app/hdf5/1.10.4/cpu/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaskap_askap.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

