# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/zyktrcn/sgx/ipp-crypto/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyktrcn/sgx/ipp-crypto/examples/_build

# Utility rule file for ippcp_examples_all.

# Include the progress variables for this target.
include CMakeFiles/ippcp_examples_all.dir/progress.make

ippcp_examples_all: CMakeFiles/ippcp_examples_all.dir/build.make

.PHONY : ippcp_examples_all

# Rule to build all files generated by this target.
CMakeFiles/ippcp_examples_all.dir/build: ippcp_examples_all

.PHONY : CMakeFiles/ippcp_examples_all.dir/build

CMakeFiles/ippcp_examples_all.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ippcp_examples_all.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ippcp_examples_all.dir/clean

CMakeFiles/ippcp_examples_all.dir/depend:
	cd /home/zyktrcn/sgx/ipp-crypto/examples/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyktrcn/sgx/ipp-crypto/examples /home/zyktrcn/sgx/ipp-crypto/examples /home/zyktrcn/sgx/ipp-crypto/examples/_build /home/zyktrcn/sgx/ipp-crypto/examples/_build /home/zyktrcn/sgx/ipp-crypto/examples/_build/CMakeFiles/ippcp_examples_all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ippcp_examples_all.dir/depend

