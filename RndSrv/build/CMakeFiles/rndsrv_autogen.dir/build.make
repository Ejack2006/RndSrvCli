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
CMAKE_SOURCE_DIR = /home/evgeny/projects/RndSrvCli/RndSrv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/evgeny/projects/RndSrvCli/RndSrv/build

# Utility rule file for rndsrv_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/rndsrv_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rndsrv_autogen.dir/progress.make

CMakeFiles/rndsrv_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target rndsrv"
	/usr/bin/cmake -E cmake_autogen /home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles/rndsrv_autogen.dir/AutogenInfo.json ""

rndsrv_autogen: CMakeFiles/rndsrv_autogen
rndsrv_autogen: CMakeFiles/rndsrv_autogen.dir/build.make
.PHONY : rndsrv_autogen

# Rule to build all files generated by this target.
CMakeFiles/rndsrv_autogen.dir/build: rndsrv_autogen
.PHONY : CMakeFiles/rndsrv_autogen.dir/build

CMakeFiles/rndsrv_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rndsrv_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rndsrv_autogen.dir/clean

CMakeFiles/rndsrv_autogen.dir/depend:
	cd /home/evgeny/projects/RndSrvCli/RndSrv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/evgeny/projects/RndSrvCli/RndSrv /home/evgeny/projects/RndSrvCli/RndSrv /home/evgeny/projects/RndSrvCli/RndSrv/build /home/evgeny/projects/RndSrvCli/RndSrv/build /home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles/rndsrv_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rndsrv_autogen.dir/depend

