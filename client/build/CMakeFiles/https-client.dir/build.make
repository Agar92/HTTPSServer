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
include CMakeFiles/https-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/https-client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/https-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/https-client.dir/flags.make

CMakeFiles/https-client.dir/client.cpp.o: CMakeFiles/https-client.dir/flags.make
CMakeFiles/https-client.dir/client.cpp.o: ../client.cpp
CMakeFiles/https-client.dir/client.cpp.o: CMakeFiles/https-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/https-client.dir/client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/https-client.dir/client.cpp.o -MF CMakeFiles/https-client.dir/client.cpp.o.d -o CMakeFiles/https-client.dir/client.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp

CMakeFiles/https-client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/https-client.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp > CMakeFiles/https-client.dir/client.cpp.i

CMakeFiles/https-client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/https-client.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/client.cpp -o CMakeFiles/https-client.dir/client.cpp.s

CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o: CMakeFiles/https-client.dir/flags.make
CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o: ../HTTPGetRequest.cpp
CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o: CMakeFiles/https-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o -MF CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o.d -o CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o -c /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp

CMakeFiles/https-client.dir/HTTPGetRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/https-client.dir/HTTPGetRequest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp > CMakeFiles/https-client.dir/HTTPGetRequest.cpp.i

CMakeFiles/https-client.dir/HTTPGetRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/https-client.dir/HTTPGetRequest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/HTTPGetRequest.cpp -o CMakeFiles/https-client.dir/HTTPGetRequest.cpp.s

# Object files for target https-client
https__client_OBJECTS = \
"CMakeFiles/https-client.dir/client.cpp.o" \
"CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o"

# External object files for target https-client
https__client_EXTERNAL_OBJECTS =

https-client: CMakeFiles/https-client.dir/client.cpp.o
https-client: CMakeFiles/https-client.dir/HTTPGetRequest.cpp.o
https-client: CMakeFiles/https-client.dir/build.make
https-client: /usr/lib/x86_64-linux-gnu/libssl.so
https-client: /usr/lib/x86_64-linux-gnu/libcrypto.so
https-client: CMakeFiles/https-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable https-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/https-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/https-client.dir/build: https-client
.PHONY : CMakeFiles/https-client.dir/build

CMakeFiles/https-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/https-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/https-client.dir/clean

CMakeFiles/https-client.dir/depend:
	cd /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build /home/andrey/Desktop/HTTPSServer/ssl_test_clean/client/build/CMakeFiles/https-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/https-client.dir/depend

