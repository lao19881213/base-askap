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
include askap/askap/CMakeFiles/askap_askap.dir/depend.make

# Include the progress variables for this target.
include askap/askap/CMakeFiles/askap_askap.dir/progress.make

# Include the compile flags for this target's objects.
include askap/askap/CMakeFiles/askap_askap.dir/flags.make

askap/askap/CMakeFiles/askap_askap.dir/Application.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/Application.cc.o: ../askap/askap/Application.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/Application.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/Application.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Application.cc

askap/askap/CMakeFiles/askap_askap.dir/Application.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/Application.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Application.cc > CMakeFiles/askap_askap.dir/Application.cc.i

askap/askap/CMakeFiles/askap_askap.dir/Application.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/Application.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Application.cc -o CMakeFiles/askap_askap.dir/Application.cc.s

askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.o: ../askap/askap/AskapError.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/AskapError.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapError.cc

askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/AskapError.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapError.cc > CMakeFiles/askap_askap.dir/AskapError.cc.i

askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/AskapError.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapError.cc -o CMakeFiles/askap_askap.dir/AskapError.cc.s

askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.o: ../askap/askap/AskapUtil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/AskapUtil.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapUtil.cc

askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/AskapUtil.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapUtil.cc > CMakeFiles/askap_askap.dir/AskapUtil.cc.i

askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/AskapUtil.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapUtil.cc -o CMakeFiles/askap_askap.dir/AskapUtil.cc.s

askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.o: ../askap/askap/ISignalHandler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/ISignalHandler.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/ISignalHandler.cc

askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/ISignalHandler.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/ISignalHandler.cc > CMakeFiles/askap_askap.dir/ISignalHandler.cc.i

askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/ISignalHandler.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/ISignalHandler.cc -o CMakeFiles/askap_askap.dir/ISignalHandler.cc.s

askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.o: ../askap/askap/IndexConverter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/IndexConverter.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/IndexConverter.cc

askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/IndexConverter.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/IndexConverter.cc > CMakeFiles/askap_askap.dir/IndexConverter.cc.i

askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/IndexConverter.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/IndexConverter.cc -o CMakeFiles/askap_askap.dir/IndexConverter.cc.s

askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o: ../askap/askap/Log4cxxLogSink.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Log4cxxLogSink.cc

askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Log4cxxLogSink.cc > CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.i

askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/Log4cxxLogSink.cc -o CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.s

askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.o: ../askap/askap/RangePartition.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/RangePartition.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/RangePartition.cc

askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/RangePartition.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/RangePartition.cc > CMakeFiles/askap_askap.dir/RangePartition.cc.i

askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/RangePartition.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/RangePartition.cc -o CMakeFiles/askap_askap.dir/RangePartition.cc.s

askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.o: ../askap/askap/SignalCounter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/SignalCounter.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalCounter.cc

askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/SignalCounter.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalCounter.cc > CMakeFiles/askap_askap.dir/SignalCounter.cc.i

askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/SignalCounter.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalCounter.cc -o CMakeFiles/askap_askap.dir/SignalCounter.cc.s

askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o: ../askap/askap/SignalManagerSingleton.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalManagerSingleton.cc

askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalManagerSingleton.cc > CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.i

askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/SignalManagerSingleton.cc -o CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.s

askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.o: ../askap/askap/StatReporter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/StatReporter.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/StatReporter.cc

askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/StatReporter.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/StatReporter.cc > CMakeFiles/askap_askap.dir/StatReporter.cc.i

askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/StatReporter.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/StatReporter.cc -o CMakeFiles/askap_askap.dir/StatReporter.cc.s

askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o: ../askap/profile/AskapProfiler.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/AskapProfiler.cc

askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/AskapProfiler.cc > CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.i

askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/AskapProfiler.cc -o CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.s

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o: ../askap/profile/ProfileData.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileData.cc

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileData.cc > CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.i

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileData.cc -o CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.s

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o: ../askap/profile/ProfileNode.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileNode.cc

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileNode.cc > CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.i

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileNode.cc -o CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.s

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o: ../askap/profile/ProfileSingleton.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileSingleton.cc

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileSingleton.cc > CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.i

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileSingleton.cc -o CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.s

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o: ../askap/profile/ProfileTree.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileTree.cc

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileTree.cc > CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.i

askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/profile/ProfileTree.cc -o CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.s

askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o: askap/askap/CMakeFiles/askap_askap.dir/flags.make
askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o: ../askap/askap/AskapTestRunner.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o -c /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapTestRunner.cc

askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/askap_askap.dir/AskapTestRunner.cc.i"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapTestRunner.cc > CMakeFiles/askap_askap.dir/AskapTestRunner.cc.i

askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/askap_askap.dir/AskapTestRunner.cc.s"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap/AskapTestRunner.cc -o CMakeFiles/askap_askap.dir/AskapTestRunner.cc.s

# Object files for target askap_askap
askap_askap_OBJECTS = \
"CMakeFiles/askap_askap.dir/Application.cc.o" \
"CMakeFiles/askap_askap.dir/AskapError.cc.o" \
"CMakeFiles/askap_askap.dir/AskapUtil.cc.o" \
"CMakeFiles/askap_askap.dir/ISignalHandler.cc.o" \
"CMakeFiles/askap_askap.dir/IndexConverter.cc.o" \
"CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o" \
"CMakeFiles/askap_askap.dir/RangePartition.cc.o" \
"CMakeFiles/askap_askap.dir/SignalCounter.cc.o" \
"CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o" \
"CMakeFiles/askap_askap.dir/StatReporter.cc.o" \
"CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o" \
"CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o" \
"CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o" \
"CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o" \
"CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o" \
"CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o"

# External object files for target askap_askap
askap_askap_EXTERNAL_OBJECTS =

askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/Application.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/AskapError.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/AskapUtil.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/ISignalHandler.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/IndexConverter.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/Log4cxxLogSink.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/RangePartition.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/SignalCounter.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/SignalManagerSingleton.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/StatReporter.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/__/profile/AskapProfiler.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileData.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileNode.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileSingleton.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/__/profile/ProfileTree.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/AskapTestRunner.cc.o
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/build.make
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_ms.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_images.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_mirlib.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_lattices.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_coordinates.so
askap/askap/libaskap_askap.so: /home/app/wsclib/6.2/cpu/lib/libwcs.so
askap/askap/libaskap_askap.so: /usr/lib64/libm.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_fits.so
askap/askap/libaskap_askap.so: /home/app/cfitsio/cpu/lib/libcfitsio.so
askap/askap/libaskap_askap.so: /usr/lib64/libm.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath_f.so
askap/askap/libaskap_askap.so: /home/app/lapack/3.8.0/cpu/lib64/liblapack.so
askap/askap/libaskap_askap.so: /home/app/lapack/3.8.0/cpu/lib64/libblas.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_measures.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_tables.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_casa.so
askap/askap/libaskap_askap.so: /home/app/hdf5/1.10.4/cpu/lib/libhdf5.so
askap/askap/libaskap_askap.so: /usr/lib64/libz.so
askap/askap/libaskap_askap.so: /usr/lib64/libdl.so
askap/askap/libaskap_askap.so: /usr/lib64/libm.so
askap/askap/libaskap_askap.so: /usr/lib64/libm.so
askap/askap/libaskap_askap.so: /usr/lib64/liblog4cxx.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_system.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_program_options.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_thread.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_chrono.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_date_time.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_atomic.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libCommon.so
askap/askap/libaskap_askap.so: /usr/lib64/libcppunit.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_fits.so
askap/askap/libaskap_askap.so: /home/app/cfitsio/cpu/lib/libcfitsio.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_scimath_f.so
askap/askap/libaskap_askap.so: /home/app/lapack/3.8.0/cpu/lib64/liblapack.so
askap/askap/libaskap_askap.so: /home/app/lapack/3.8.0/cpu/lib64/libblas.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_measures.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_tables.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libcasa_casa.so
askap/askap/libaskap_askap.so: /home/app/hdf5/1.10.4/cpu/lib/libhdf5.so
askap/askap/libaskap_askap.so: /usr/lib64/libz.so
askap/askap/libaskap_askap.so: /usr/lib64/libdl.so
askap/askap/libaskap_askap.so: /usr/lib64/liblog4cxx.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_system.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_program_options.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_thread.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_chrono.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_date_time.so
askap/askap/libaskap_askap.so: /home/app/boost/1.65.1/cpu/lib/libboost_atomic.so
askap/askap/libaskap_askap.so: /home/app/askapsoft/cpu/mpich/3.2.1/lib/libCommon.so
askap/askap/libaskap_askap.so: /usr/lib64/libcppunit.so
askap/askap/libaskap_askap.so: askap/askap/CMakeFiles/askap_askap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX shared library libaskap_askap.so"
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/askap_askap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
askap/askap/CMakeFiles/askap_askap.dir/build: askap/askap/libaskap_askap.so

.PHONY : askap/askap/CMakeFiles/askap_askap.dir/build

askap/askap/CMakeFiles/askap_askap.dir/clean:
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap && $(CMAKE_COMMAND) -P CMakeFiles/askap_askap.dir/cmake_clean.cmake
.PHONY : askap/askap/CMakeFiles/askap_askap.dir/clean

askap/askap/CMakeFiles/askap_askap.dir/depend:
	cd /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/askap/askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap /ssd/ASKAP/cloud-dingo-blao/shao-cpu-mpich/base-askap/build/askap/askap/CMakeFiles/askap_askap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : askap/askap/CMakeFiles/askap_askap.dir/depend

