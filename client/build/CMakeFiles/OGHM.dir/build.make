# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/stefan/Work/C_CPP/OnlineGreenHellMap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefan/Work/C_CPP/OnlineGreenHellMap/build

# Include any dependencies generated for this target.
include CMakeFiles/OGHM.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OGHM.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OGHM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OGHM.dir/flags.make

CMakeFiles/OGHM.dir/src/main.c.o: CMakeFiles/OGHM.dir/flags.make
CMakeFiles/OGHM.dir/src/main.c.o: ../src/main.c
CMakeFiles/OGHM.dir/src/main.c.o: CMakeFiles/OGHM.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefan/Work/C_CPP/OnlineGreenHellMap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/OGHM.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OGHM.dir/src/main.c.o -MF CMakeFiles/OGHM.dir/src/main.c.o.d -o CMakeFiles/OGHM.dir/src/main.c.o -c /home/stefan/Work/C_CPP/OnlineGreenHellMap/src/main.c

CMakeFiles/OGHM.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OGHM.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefan/Work/C_CPP/OnlineGreenHellMap/src/main.c > CMakeFiles/OGHM.dir/src/main.c.i

CMakeFiles/OGHM.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OGHM.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefan/Work/C_CPP/OnlineGreenHellMap/src/main.c -o CMakeFiles/OGHM.dir/src/main.c.s

# Object files for target OGHM
OGHM_OBJECTS = \
"CMakeFiles/OGHM.dir/src/main.c.o"

# External object files for target OGHM
OGHM_EXTERNAL_OBJECTS =

OGHM: CMakeFiles/OGHM.dir/src/main.c.o
OGHM: CMakeFiles/OGHM.dir/build.make
OGHM: /usr/lib/x86_64-linux-gnu/libcurl.so
OGHM: CMakeFiles/OGHM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefan/Work/C_CPP/OnlineGreenHellMap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable OGHM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OGHM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OGHM.dir/build: OGHM
.PHONY : CMakeFiles/OGHM.dir/build

CMakeFiles/OGHM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OGHM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OGHM.dir/clean

CMakeFiles/OGHM.dir/depend:
	cd /home/stefan/Work/C_CPP/OnlineGreenHellMap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefan/Work/C_CPP/OnlineGreenHellMap /home/stefan/Work/C_CPP/OnlineGreenHellMap /home/stefan/Work/C_CPP/OnlineGreenHellMap/build /home/stefan/Work/C_CPP/OnlineGreenHellMap/build /home/stefan/Work/C_CPP/OnlineGreenHellMap/build/CMakeFiles/OGHM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OGHM.dir/depend
