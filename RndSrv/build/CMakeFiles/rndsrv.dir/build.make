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

# Include any dependencies generated for this target.
include CMakeFiles/rndsrv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rndsrv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rndsrv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rndsrv.dir/flags.make

CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o: CMakeFiles/rndsrv.dir/flags.make
CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o: rndsrv_autogen/mocs_compilation.cpp
CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o: CMakeFiles/rndsrv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o -MF CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o -c /home/evgeny/projects/RndSrvCli/RndSrv/build/rndsrv_autogen/mocs_compilation.cpp

CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/evgeny/projects/RndSrvCli/RndSrv/build/rndsrv_autogen/mocs_compilation.cpp > CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.i

CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/evgeny/projects/RndSrvCli/RndSrv/build/rndsrv_autogen/mocs_compilation.cpp -o CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.s

CMakeFiles/rndsrv.dir/src/main.cpp.o: CMakeFiles/rndsrv.dir/flags.make
CMakeFiles/rndsrv.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/rndsrv.dir/src/main.cpp.o: CMakeFiles/rndsrv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rndsrv.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rndsrv.dir/src/main.cpp.o -MF CMakeFiles/rndsrv.dir/src/main.cpp.o.d -o CMakeFiles/rndsrv.dir/src/main.cpp.o -c /home/evgeny/projects/RndSrvCli/RndSrv/src/main.cpp

CMakeFiles/rndsrv.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rndsrv.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/evgeny/projects/RndSrvCli/RndSrv/src/main.cpp > CMakeFiles/rndsrv.dir/src/main.cpp.i

CMakeFiles/rndsrv.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rndsrv.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/evgeny/projects/RndSrvCli/RndSrv/src/main.cpp -o CMakeFiles/rndsrv.dir/src/main.cpp.s

CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o: CMakeFiles/rndsrv.dir/flags.make
CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o: ../src/rndsrv.cpp
CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o: CMakeFiles/rndsrv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o -MF CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o.d -o CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o -c /home/evgeny/projects/RndSrvCli/RndSrv/src/rndsrv.cpp

CMakeFiles/rndsrv.dir/src/rndsrv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rndsrv.dir/src/rndsrv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/evgeny/projects/RndSrvCli/RndSrv/src/rndsrv.cpp > CMakeFiles/rndsrv.dir/src/rndsrv.cpp.i

CMakeFiles/rndsrv.dir/src/rndsrv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rndsrv.dir/src/rndsrv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/evgeny/projects/RndSrvCli/RndSrv/src/rndsrv.cpp -o CMakeFiles/rndsrv.dir/src/rndsrv.cpp.s

CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o: CMakeFiles/rndsrv.dir/flags.make
CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o: ../src/tcpserver.cpp
CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o: CMakeFiles/rndsrv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o -MF CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o.d -o CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o -c /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpserver.cpp

CMakeFiles/rndsrv.dir/src/tcpserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rndsrv.dir/src/tcpserver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpserver.cpp > CMakeFiles/rndsrv.dir/src/tcpserver.cpp.i

CMakeFiles/rndsrv.dir/src/tcpserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rndsrv.dir/src/tcpserver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpserver.cpp -o CMakeFiles/rndsrv.dir/src/tcpserver.cpp.s

CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o: CMakeFiles/rndsrv.dir/flags.make
CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o: ../src/tcpconnection.cpp
CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o: CMakeFiles/rndsrv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o -MF CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o.d -o CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o -c /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpconnection.cpp

CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpconnection.cpp > CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.i

CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/evgeny/projects/RndSrvCli/RndSrv/src/tcpconnection.cpp -o CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.s

# Object files for target rndsrv
rndsrv_OBJECTS = \
"CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/rndsrv.dir/src/main.cpp.o" \
"CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o" \
"CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o" \
"CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o"

# External object files for target rndsrv
rndsrv_EXTERNAL_OBJECTS =

rndsrv: CMakeFiles/rndsrv.dir/rndsrv_autogen/mocs_compilation.cpp.o
rndsrv: CMakeFiles/rndsrv.dir/src/main.cpp.o
rndsrv: CMakeFiles/rndsrv.dir/src/rndsrv.cpp.o
rndsrv: CMakeFiles/rndsrv.dir/src/tcpserver.cpp.o
rndsrv: CMakeFiles/rndsrv.dir/src/tcpconnection.cpp.o
rndsrv: CMakeFiles/rndsrv.dir/build.make
rndsrv: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.10
rndsrv: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.10
rndsrv: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.10
rndsrv: CMakeFiles/rndsrv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable rndsrv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rndsrv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rndsrv.dir/build: rndsrv
.PHONY : CMakeFiles/rndsrv.dir/build

CMakeFiles/rndsrv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rndsrv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rndsrv.dir/clean

CMakeFiles/rndsrv.dir/depend:
	cd /home/evgeny/projects/RndSrvCli/RndSrv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/evgeny/projects/RndSrvCli/RndSrv /home/evgeny/projects/RndSrvCli/RndSrv /home/evgeny/projects/RndSrvCli/RndSrv/build /home/evgeny/projects/RndSrvCli/RndSrv/build /home/evgeny/projects/RndSrvCli/RndSrv/build/CMakeFiles/rndsrv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rndsrv.dir/depend
