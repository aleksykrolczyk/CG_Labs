# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/akrolczyk/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/akrolczyk/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/212.5080.54/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/akrolczyk/studia/CG_Labs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/akrolczyk/studia/CG_Labs/cmake-build-debug

# Include any dependencies generated for this target.
include src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/depend.make
# Include the progress variables for this target.
include src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/progress.make

# Include the compile flags for this target's objects.
include src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/flags.make

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/flags.make
src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o: ../src/EDAF80/assignment3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akrolczyk/studia/CG_Labs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o -c /Users/akrolczyk/studia/CG_Labs/src/EDAF80/assignment3.cpp

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.i"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akrolczyk/studia/CG_Labs/src/EDAF80/assignment3.cpp > CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.i

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.s"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akrolczyk/studia/CG_Labs/src/EDAF80/assignment3.cpp -o CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.s

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/flags.make
src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o: ../dependencies/tinyfiledialogs-src/tinyfiledialogs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akrolczyk/studia/CG_Labs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o -c /Users/akrolczyk/studia/CG_Labs/dependencies/tinyfiledialogs-src/tinyfiledialogs.c

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.i"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/akrolczyk/studia/CG_Labs/dependencies/tinyfiledialogs-src/tinyfiledialogs.c > CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.i

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.s"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/akrolczyk/studia/CG_Labs/dependencies/tinyfiledialogs-src/tinyfiledialogs.c -o CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.s

# Object files for target EDAF80_Assignment3
EDAF80_Assignment3_OBJECTS = \
"CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o" \
"CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o"

# External object files for target EDAF80_Assignment3
EDAF80_Assignment3_EXTERNAL_OBJECTS =

src/EDAF80/EDAF80_Assignment3: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/assignment3.cpp.o
src/EDAF80/EDAF80_Assignment3: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/__/__/dependencies/tinyfiledialogs-src/tinyfiledialogs.c.o
src/EDAF80/EDAF80_Assignment3: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/build.make
src/EDAF80/EDAF80_Assignment3: src/EDAF80/libparametric_shapes.a
src/EDAF80/EDAF80_Assignment3: src/core/libbonobo.a
src/EDAF80/EDAF80_Assignment3: src/external/libexternal_libs.a
src/EDAF80/EDAF80_Assignment3: ../dependencies/glfw-install/lib/libglfw3.a
src/EDAF80/EDAF80_Assignment3: src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akrolczyk/studia/CG_Labs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable EDAF80_Assignment3"
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EDAF80_Assignment3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/build: src/EDAF80/EDAF80_Assignment3
.PHONY : src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/build

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/clean:
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 && $(CMAKE_COMMAND) -P CMakeFiles/EDAF80_Assignment3.dir/cmake_clean.cmake
.PHONY : src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/clean

src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/depend:
	cd /Users/akrolczyk/studia/CG_Labs/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akrolczyk/studia/CG_Labs /Users/akrolczyk/studia/CG_Labs/src/EDAF80 /Users/akrolczyk/studia/CG_Labs/cmake-build-debug /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80 /Users/akrolczyk/studia/CG_Labs/cmake-build-debug/src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/EDAF80/CMakeFiles/EDAF80_Assignment3.dir/depend

