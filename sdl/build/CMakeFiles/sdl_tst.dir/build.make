# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/baorr/Documents/programming/sdl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/baorr/Documents/programming/sdl/build

# Include any dependencies generated for this target.
include CMakeFiles/sdl_tst.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sdl_tst.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sdl_tst.dir/flags.make

CMakeFiles/sdl_tst.dir/test.cpp.o: CMakeFiles/sdl_tst.dir/flags.make
CMakeFiles/sdl_tst.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baorr/Documents/programming/sdl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sdl_tst.dir/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sdl_tst.dir/test.cpp.o -c /home/baorr/Documents/programming/sdl/test.cpp

CMakeFiles/sdl_tst.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdl_tst.dir/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/baorr/Documents/programming/sdl/test.cpp > CMakeFiles/sdl_tst.dir/test.cpp.i

CMakeFiles/sdl_tst.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdl_tst.dir/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/baorr/Documents/programming/sdl/test.cpp -o CMakeFiles/sdl_tst.dir/test.cpp.s

CMakeFiles/sdl_tst.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/sdl_tst.dir/test.cpp.o.requires

CMakeFiles/sdl_tst.dir/test.cpp.o.provides: CMakeFiles/sdl_tst.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdl_tst.dir/build.make CMakeFiles/sdl_tst.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/sdl_tst.dir/test.cpp.o.provides

CMakeFiles/sdl_tst.dir/test.cpp.o.provides.build: CMakeFiles/sdl_tst.dir/test.cpp.o


# Object files for target sdl_tst
sdl_tst_OBJECTS = \
"CMakeFiles/sdl_tst.dir/test.cpp.o"

# External object files for target sdl_tst
sdl_tst_EXTERNAL_OBJECTS =

sdl_tst: CMakeFiles/sdl_tst.dir/test.cpp.o
sdl_tst: CMakeFiles/sdl_tst.dir/build.make
sdl_tst: CMakeFiles/sdl_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/baorr/Documents/programming/sdl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sdl_tst"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdl_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sdl_tst.dir/build: sdl_tst

.PHONY : CMakeFiles/sdl_tst.dir/build

CMakeFiles/sdl_tst.dir/requires: CMakeFiles/sdl_tst.dir/test.cpp.o.requires

.PHONY : CMakeFiles/sdl_tst.dir/requires

CMakeFiles/sdl_tst.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sdl_tst.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sdl_tst.dir/clean

CMakeFiles/sdl_tst.dir/depend:
	cd /home/baorr/Documents/programming/sdl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/baorr/Documents/programming/sdl /home/baorr/Documents/programming/sdl /home/baorr/Documents/programming/sdl/build /home/baorr/Documents/programming/sdl/build /home/baorr/Documents/programming/sdl/build/CMakeFiles/sdl_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sdl_tst.dir/depend

