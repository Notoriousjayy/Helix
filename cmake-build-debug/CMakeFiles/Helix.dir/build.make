# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jordan/Helix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jordan/Helix/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Helix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Helix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Helix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Helix.dir/flags.make

CMakeFiles/Helix.dir/src/main.c.o: CMakeFiles/Helix.dir/flags.make
CMakeFiles/Helix.dir/src/main.c.o: /home/jordan/Helix/src/main.c
CMakeFiles/Helix.dir/src/main.c.o: CMakeFiles/Helix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jordan/Helix/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Helix.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Helix.dir/src/main.c.o -MF CMakeFiles/Helix.dir/src/main.c.o.d -o CMakeFiles/Helix.dir/src/main.c.o -c /home/jordan/Helix/src/main.c

CMakeFiles/Helix.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Helix.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jordan/Helix/src/main.c > CMakeFiles/Helix.dir/src/main.c.i

CMakeFiles/Helix.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Helix.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jordan/Helix/src/main.c -o CMakeFiles/Helix.dir/src/main.c.s

CMakeFiles/Helix.dir/src/data_structures/array.c.o: CMakeFiles/Helix.dir/flags.make
CMakeFiles/Helix.dir/src/data_structures/array.c.o: /home/jordan/Helix/src/data_structures/array.c
CMakeFiles/Helix.dir/src/data_structures/array.c.o: CMakeFiles/Helix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jordan/Helix/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Helix.dir/src/data_structures/array.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Helix.dir/src/data_structures/array.c.o -MF CMakeFiles/Helix.dir/src/data_structures/array.c.o.d -o CMakeFiles/Helix.dir/src/data_structures/array.c.o -c /home/jordan/Helix/src/data_structures/array.c

CMakeFiles/Helix.dir/src/data_structures/array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Helix.dir/src/data_structures/array.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jordan/Helix/src/data_structures/array.c > CMakeFiles/Helix.dir/src/data_structures/array.c.i

CMakeFiles/Helix.dir/src/data_structures/array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Helix.dir/src/data_structures/array.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jordan/Helix/src/data_structures/array.c -o CMakeFiles/Helix.dir/src/data_structures/array.c.s

# Object files for target Helix
Helix_OBJECTS = \
"CMakeFiles/Helix.dir/src/main.c.o" \
"CMakeFiles/Helix.dir/src/data_structures/array.c.o"

# External object files for target Helix
Helix_EXTERNAL_OBJECTS =

Helix: CMakeFiles/Helix.dir/src/main.c.o
Helix: CMakeFiles/Helix.dir/src/data_structures/array.c.o
Helix: CMakeFiles/Helix.dir/build.make
Helix: CMakeFiles/Helix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jordan/Helix/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Helix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Helix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Helix.dir/build: Helix
.PHONY : CMakeFiles/Helix.dir/build

CMakeFiles/Helix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Helix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Helix.dir/clean

CMakeFiles/Helix.dir/depend:
	cd /home/jordan/Helix/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jordan/Helix /home/jordan/Helix /home/jordan/Helix/cmake-build-debug /home/jordan/Helix/cmake-build-debug /home/jordan/Helix/cmake-build-debug/CMakeFiles/Helix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Helix.dir/depend

