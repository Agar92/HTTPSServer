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
CMAKE_SOURCE_DIR = /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build

# Include any dependencies generated for this target.
include CMakeFiles/http-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/http-server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/http-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/http-server.dir/flags.make

CMakeFiles/http-server.dir/server.cpp.o: CMakeFiles/http-server.dir/flags.make
CMakeFiles/http-server.dir/server.cpp.o: ../server.cpp
CMakeFiles/http-server.dir/server.cpp.o: CMakeFiles/http-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/http-server.dir/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-server.dir/server.cpp.o -MF CMakeFiles/http-server.dir/server.cpp.o.d -o CMakeFiles/http-server.dir/server.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/server.cpp

CMakeFiles/http-server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-server.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/server.cpp > CMakeFiles/http-server.dir/server.cpp.i

CMakeFiles/http-server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-server.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/server.cpp -o CMakeFiles/http-server.dir/server.cpp.s

CMakeFiles/http-server.dir/helper/mime_types.cpp.o: CMakeFiles/http-server.dir/flags.make
CMakeFiles/http-server.dir/helper/mime_types.cpp.o: ../helper/mime_types.cpp
CMakeFiles/http-server.dir/helper/mime_types.cpp.o: CMakeFiles/http-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/http-server.dir/helper/mime_types.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-server.dir/helper/mime_types.cpp.o -MF CMakeFiles/http-server.dir/helper/mime_types.cpp.o.d -o CMakeFiles/http-server.dir/helper/mime_types.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/mime_types.cpp

CMakeFiles/http-server.dir/helper/mime_types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-server.dir/helper/mime_types.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/mime_types.cpp > CMakeFiles/http-server.dir/helper/mime_types.cpp.i

CMakeFiles/http-server.dir/helper/mime_types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-server.dir/helper/mime_types.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/mime_types.cpp -o CMakeFiles/http-server.dir/helper/mime_types.cpp.s

CMakeFiles/http-server.dir/helper/reply.cpp.o: CMakeFiles/http-server.dir/flags.make
CMakeFiles/http-server.dir/helper/reply.cpp.o: ../helper/reply.cpp
CMakeFiles/http-server.dir/helper/reply.cpp.o: CMakeFiles/http-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/http-server.dir/helper/reply.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-server.dir/helper/reply.cpp.o -MF CMakeFiles/http-server.dir/helper/reply.cpp.o.d -o CMakeFiles/http-server.dir/helper/reply.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/reply.cpp

CMakeFiles/http-server.dir/helper/reply.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-server.dir/helper/reply.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/reply.cpp > CMakeFiles/http-server.dir/helper/reply.cpp.i

CMakeFiles/http-server.dir/helper/reply.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-server.dir/helper/reply.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/reply.cpp -o CMakeFiles/http-server.dir/helper/reply.cpp.s

CMakeFiles/http-server.dir/helper/request_handler.cpp.o: CMakeFiles/http-server.dir/flags.make
CMakeFiles/http-server.dir/helper/request_handler.cpp.o: ../helper/request_handler.cpp
CMakeFiles/http-server.dir/helper/request_handler.cpp.o: CMakeFiles/http-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/http-server.dir/helper/request_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-server.dir/helper/request_handler.cpp.o -MF CMakeFiles/http-server.dir/helper/request_handler.cpp.o.d -o CMakeFiles/http-server.dir/helper/request_handler.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_handler.cpp

CMakeFiles/http-server.dir/helper/request_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-server.dir/helper/request_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_handler.cpp > CMakeFiles/http-server.dir/helper/request_handler.cpp.i

CMakeFiles/http-server.dir/helper/request_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-server.dir/helper/request_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_handler.cpp -o CMakeFiles/http-server.dir/helper/request_handler.cpp.s

CMakeFiles/http-server.dir/helper/request_parser.cpp.o: CMakeFiles/http-server.dir/flags.make
CMakeFiles/http-server.dir/helper/request_parser.cpp.o: ../helper/request_parser.cpp
CMakeFiles/http-server.dir/helper/request_parser.cpp.o: CMakeFiles/http-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/http-server.dir/helper/request_parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-server.dir/helper/request_parser.cpp.o -MF CMakeFiles/http-server.dir/helper/request_parser.cpp.o.d -o CMakeFiles/http-server.dir/helper/request_parser.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_parser.cpp

CMakeFiles/http-server.dir/helper/request_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-server.dir/helper/request_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_parser.cpp > CMakeFiles/http-server.dir/helper/request_parser.cpp.i

CMakeFiles/http-server.dir/helper/request_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-server.dir/helper/request_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/helper/request_parser.cpp -o CMakeFiles/http-server.dir/helper/request_parser.cpp.s

# Object files for target http-server
http__server_OBJECTS = \
"CMakeFiles/http-server.dir/server.cpp.o" \
"CMakeFiles/http-server.dir/helper/mime_types.cpp.o" \
"CMakeFiles/http-server.dir/helper/reply.cpp.o" \
"CMakeFiles/http-server.dir/helper/request_handler.cpp.o" \
"CMakeFiles/http-server.dir/helper/request_parser.cpp.o"

# External object files for target http-server
http__server_EXTERNAL_OBJECTS =

http-server: CMakeFiles/http-server.dir/server.cpp.o
http-server: CMakeFiles/http-server.dir/helper/mime_types.cpp.o
http-server: CMakeFiles/http-server.dir/helper/reply.cpp.o
http-server: CMakeFiles/http-server.dir/helper/request_handler.cpp.o
http-server: CMakeFiles/http-server.dir/helper/request_parser.cpp.o
http-server: CMakeFiles/http-server.dir/build.make
http-server: /usr/lib/x86_64-linux-gnu/libssl.so
http-server: /usr/lib/x86_64-linux-gnu/libcrypto.so
http-server: CMakeFiles/http-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable http-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/http-server.dir/build: http-server
.PHONY : CMakeFiles/http-server.dir/build

CMakeFiles/http-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/http-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/http-server.dir/clean

CMakeFiles/http-server.dir/depend:
	cd /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/server/build/CMakeFiles/http-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/http-server.dir/depend

