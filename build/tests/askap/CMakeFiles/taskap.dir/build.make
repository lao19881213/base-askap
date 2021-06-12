# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/app/cmake/3.15.2/cpu/bin/cmake

# The command to remove a file.
RM = /home/app/cmake/3.15.2/cpu/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build

# Include any dependencies generated for this target.
include tests/askap/CMakeFiles/taskap.dir/depend.make

# Include the progress variables for this target.
include tests/askap/CMakeFiles/taskap.dir/progress.make

# Include the compile flags for this target's objects.
include tests/askap/CMakeFiles/taskap.dir/flags.make

tests/askap/CMakeFiles/taskap.dir/taskap.cc.o: tests/askap/CMakeFiles/taskap.dir/flags.make
tests/askap/CMakeFiles/taskap.dir/taskap.cc.o: ../tests/askap/taskap.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/askap/CMakeFiles/taskap.dir/taskap.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/taskap.dir/taskap.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/tests/askap/taskap.cc

tests/askap/CMakeFiles/taskap.dir/taskap.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskap.dir/taskap.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/tests/askap/taskap.cc > CMakeFiles/taskap.dir/taskap.cc.i

tests/askap/CMakeFiles/taskap.dir/taskap.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskap.dir/taskap.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/tests/askap/taskap.cc -o CMakeFiles/taskap.dir/taskap.cc.s

# Object files for target taskap
taskap_OBJECTS = \
"CMakeFiles/taskap.dir/taskap.cc.o"

# External object files for target taskap
taskap_EXTERNAL_OBJECTS =

tests/askap/taskap: tests/askap/CMakeFiles/taskap.dir/taskap.cc.o
tests/askap/taskap: tests/askap/CMakeFiles/taskap.dir/build.make
tests/askap/taskap: askap/askap/libaskap_askap.so
tests/askap/taskap: /usr/lib64/libcppunit.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_ms.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_images.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_mirlib.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_lattices.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_coordinates.so
tests/askap/taskap: /home/app/wsclib/6.2/cpu/lib/libwcs.so
tests/askap/taskap: /usr/lib64/libm.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_fits.so
tests/askap/taskap: /home/app/cfitsio/cpu/lib/libcfitsio.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath_f.so
tests/askap/taskap: /home/app/lapack/3.8.0/cpu/lib64/liblapack.so
tests/askap/taskap: /home/app/lapack/3.8.0/cpu/lib64/libblas.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_measures.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_tables.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_casa.so
tests/askap/taskap: /home/app/hdf5/1.10.4/cpu/lib/libhdf5.so
tests/askap/taskap: /usr/lib64/libz.so
tests/askap/taskap: /usr/lib64/libdl.so
tests/askap/taskap: /usr/lib64/libm.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_fits.so
tests/askap/taskap: /home/app/cfitsio/cpu/lib/libcfitsio.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath_f.so
tests/askap/taskap: /home/app/lapack/3.8.0/cpu/lib64/liblapack.so
tests/askap/taskap: /home/app/lapack/3.8.0/cpu/lib64/libblas.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_measures.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_tables.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_casa.so
tests/askap/taskap: /home/app/hdf5/1.10.4/cpu/lib/libhdf5.so
tests/askap/taskap: /usr/lib64/libz.so
tests/askap/taskap: /usr/lib64/libdl.so
tests/askap/taskap: /usr/lib64/liblog4cxx.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_system.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_program_options.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_thread.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_chrono.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_date_time.so
tests/askap/taskap: /home/app/boost/1.65.1/cpu/lib/libboost_atomic.so
tests/askap/taskap: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libCommon.so
tests/askap/taskap: /usr/lib64/libcppunit.so
tests/askap/taskap: tests/askap/CMakeFiles/taskap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable taskap"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taskap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/askap/CMakeFiles/taskap.dir/build: tests/askap/taskap

.PHONY : tests/askap/CMakeFiles/taskap.dir/build

tests/askap/CMakeFiles/taskap.dir/clean:
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap && $(CMAKE_COMMAND) -P CMakeFiles/taskap.dir/cmake_clean.cmake
.PHONY : tests/askap/CMakeFiles/taskap.dir/clean

tests/askap/CMakeFiles/taskap.dir/depend:
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/tests/askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/tests/askap/CMakeFiles/taskap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/askap/CMakeFiles/taskap.dir/depend

