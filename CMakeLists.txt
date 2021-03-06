cmake_minimum_required (VERSION 3.1.0)

project(base-askap VERSION 0.0.1 LANGUAGES C CXX)

if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/askap-cmake)
    execute_process(COMMAND git pull 
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/askap-cmake)
else ()	
    execute_process(COMMAND git clone https://bitbucket.csiro.au/scm/askapsdp/askap-cmake.git
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
endif ()
set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/askap-cmake")

option (CXX11 "Compile using C++11 if possible" YES)
option (ENABLE_SHARED "Build shared libraries" YES)
option (ENABLE_RPATH "Include rpath in executables and shared libraries" YES)


# uninstall target
if(NOT TARGET uninstall)
    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
        IMMEDIATE @ONLY)

    add_custom_target(uninstall
        COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()



if (ENABLE_SHARED)
option (BUILD_SHARED_LIBS "" YES)
    if (ENABLE_RPATH)
        # Set RPATH to use for installed targets; append linker search path
        set(CMAKE_INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib" )
        set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
        set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
    endif (ENABLE_RPATH)
endif(ENABLE_SHARED)

include(install_yanda_depends)

# YandaSoft Packages (make external)
find_package(LofarCommon)
set(EXTERNAL_INSTALL_DIR ${CMAKE_INSTALL_PREFIX})

if(NOT LofarCommon_FOUND)
  
  install_yanda_depends(lofar-common)
  find_package(LofarCommon REQUIRED)  
  
endif ()

# find packages
find_package(Boost REQUIRED COMPONENTS system program_options thread chrono )
find_package(log4cxx REQUIRED)
find_package(Casacore REQUIRED COMPONENTS  ms images mirlib coordinates fits lattices measures scimath scimath_f tables casa)
find_package(CPPUnit)

# include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${Boost_INCLUDE_DIRS})
include_directories(${LofarCommon_INCLUDE_DIR})
include_directories(${log4cxx_INCLUDE_DIRS})
include_directories(${CASACORE_INCLUDE_DIRS})
add_definitions(-DHAVE_BOOST -DHAVE_LOG4CXX -DHAVE_AIPSPP)

if (CPPUNIT_FOUND)
	include_directories(${CPPUNIT_INCLUDE_DIR})
endif (CPPUNIT_FOUND)

if (CASACORE3 OR CXX11)
	set(CMAKE_CXX_STANDARD 11)
	set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()
# going to add the tests directory here
set (_modules askap)

# add some more tests and sub-directories

foreach (module ${_modules})
	add_subdirectory(askap/${module})
endforeach (module)

include(CTest)
enable_testing()
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/tests/askap)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/tests/profile)
add_subdirectory(tests/askap)
add_subdirectory(tests/profile)


