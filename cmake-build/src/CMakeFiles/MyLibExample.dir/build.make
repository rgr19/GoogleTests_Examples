# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /mnt/c/My/W/W.priv/Shared/cmake-3.13.4-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /mnt/c/My/W/W.priv/Shared/cmake-3.13.4-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build

# Include any dependencies generated for this target.
include src/CMakeFiles/MyLibExample.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/MyLibExample.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/MyLibExample.dir/flags.make

src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o: src/CMakeFiles/MyLibExample.dir/flags.make
src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o: ../src/cpp/simple_lib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o"
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o -c /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/src/cpp/simple_lib.cpp

src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.i"
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/src/cpp/simple_lib.cpp > CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.i

src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.s"
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/src/cpp/simple_lib.cpp -o CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.s

# Object files for target MyLibExample
MyLibExample_OBJECTS = \
"CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o"

# External object files for target MyLibExample
MyLibExample_EXTERNAL_OBJECTS =

src/libMyLibExample.a: src/CMakeFiles/MyLibExample.dir/cpp/simple_lib.cpp.o
src/libMyLibExample.a: src/CMakeFiles/MyLibExample.dir/build.make
src/libMyLibExample.a: src/CMakeFiles/MyLibExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMyLibExample.a"
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && $(CMAKE_COMMAND) -P CMakeFiles/MyLibExample.dir/cmake_clean_target.cmake
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyLibExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/MyLibExample.dir/build: src/libMyLibExample.a

.PHONY : src/CMakeFiles/MyLibExample.dir/build

src/CMakeFiles/MyLibExample.dir/clean:
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src && $(CMAKE_COMMAND) -P CMakeFiles/MyLibExample.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/MyLibExample.dir/clean

src/CMakeFiles/MyLibExample.dir/depend:
	cd /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/src /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src /mnt/c/My/W/W.priv/Examples/GoogleTests_Examples/cmake-build/src/CMakeFiles/MyLibExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/MyLibExample.dir/depend

