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
CMAKE_SOURCE_DIR = /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build

# Include any dependencies generated for this target.
include CMakeFiles/http-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/http-client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/http-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/http-client.dir/flags.make

CMakeFiles/http-client.dir/client.cpp.o: CMakeFiles/http-client.dir/flags.make
CMakeFiles/http-client.dir/client.cpp.o: ../client.cpp
CMakeFiles/http-client.dir/client.cpp.o: CMakeFiles/http-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/http-client.dir/client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-client.dir/client.cpp.o -MF CMakeFiles/http-client.dir/client.cpp.o.d -o CMakeFiles/http-client.dir/client.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp

CMakeFiles/http-client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-client.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp > CMakeFiles/http-client.dir/client.cpp.i

CMakeFiles/http-client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-client.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp -o CMakeFiles/http-client.dir/client.cpp.s

CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o: CMakeFiles/http-client.dir/flags.make
CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o: ../HTTPGetRequest.cpp
CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o: CMakeFiles/http-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o -MF CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o.d -o CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp

CMakeFiles/http-client.dir/HTTPGetRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http-client.dir/HTTPGetRequest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp > CMakeFiles/http-client.dir/HTTPGetRequest.cpp.i

CMakeFiles/http-client.dir/HTTPGetRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http-client.dir/HTTPGetRequest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp -o CMakeFiles/http-client.dir/HTTPGetRequest.cpp.s

# Object files for target http-client
http__client_OBJECTS = \
"CMakeFiles/http-client.dir/client.cpp.o" \
"CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o"

# External object files for target http-client
http__client_EXTERNAL_OBJECTS =

http-client: CMakeFiles/http-client.dir/client.cpp.o
http-client: CMakeFiles/http-client.dir/HTTPGetRequest.cpp.o
http-client: CMakeFiles/http-client.dir/build.make
http-client: /usr/lib/x86_64-linux-gnu/libssl.so
http-client: /usr/lib/x86_64-linux-gnu/libcrypto.so
http-client: CMakeFiles/http-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable http-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/http-client.dir/build: http-client
.PHONY : CMakeFiles/http-client.dir/build

CMakeFiles/http-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/http-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/http-client.dir/clean

CMakeFiles/http-client.dir/depend:
	cd /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles/http-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/http-client.dir/depend

