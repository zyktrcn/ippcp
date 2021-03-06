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
CMAKE_SOURCE_DIR = /home/zyktrcn/sgx/ipp-crypto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyktrcn/sgx/ipp-crypto/_build

# Include any dependencies generated for this target.
include sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/depend.make

# Include the progress variables for this target.
include sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/progress.make

# Include the compile flags for this target's objects.
include sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/flags.make

sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o: sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/flags.make
sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o: ../sources/ippcp/crypto_mb/src/apps/ba_mbx_x25519.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyktrcn/sgx/ipp-crypto/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o"
	cd /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o   -c /home/zyktrcn/sgx/ipp-crypto/sources/ippcp/crypto_mb/src/apps/ba_mbx_x25519.c

sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.i"
	cd /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyktrcn/sgx/ipp-crypto/sources/ippcp/crypto_mb/src/apps/ba_mbx_x25519.c > CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.i

sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.s"
	cd /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyktrcn/sgx/ipp-crypto/sources/ippcp/crypto_mb/src/apps/ba_mbx_x25519.c -o CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.s

# Object files for target ba_mbx_x25519
ba_mbx_x25519_OBJECTS = \
"CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o"

# External object files for target ba_mbx_x25519
ba_mbx_x25519_EXTERNAL_OBJECTS = \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x10_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x20_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x30_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x40_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x60_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x79_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x10_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x20_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x30_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x40_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x60_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x79_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x10_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x20_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x40_diagonal_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_extract_amm52x20_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_div_104_by_52.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x10_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x20_65537_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x20_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x30_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x40_65537_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x40_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x60_65537_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x60_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x79_65537_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x79_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_method.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_other52x_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_layer_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv2_layer_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv2_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv5_layer_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv5_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_pub65537_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_pub_layer_mb8.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/cpu_features.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/ifma_cvt52.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/ifma_version.c.o" \
"/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/x25519/ifma_x25519.c.o"

bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/ba_mbx_x25519.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x10_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x20_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x30_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x40_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x60_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_amm52x79_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x10_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x20_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x30_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x40_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x60_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams52x79_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x10_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x20_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_ams5x52x40_diagonal_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/avx512_primitives/ifma_extract_amm52x20_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_div_104_by_52.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x10_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x20_65537_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x20_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x30_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x40_65537_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x40_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x60_65537_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x60_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x79_65537_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_exp52x79_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_method.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_other52x_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_layer_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv2_layer_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv2_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv5_layer_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_prv5_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_pub65537_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/rsa/ifma_rsa_ssl_pub_layer_mb8.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/cpu_features.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/ifma_cvt52.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/common/ifma_version.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/CMakeFiles/crypto_mb.dir/x25519/ifma_x25519.c.o
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/build.make
bin/ba_mbx_x25519: sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zyktrcn/sgx/ipp-crypto/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../../../bin/ba_mbx_x25519"
	cd /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ba_mbx_x25519.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/build: bin/ba_mbx_x25519

.PHONY : sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/build

sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/clean:
	cd /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps && $(CMAKE_COMMAND) -P CMakeFiles/ba_mbx_x25519.dir/cmake_clean.cmake
.PHONY : sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/clean

sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/depend:
	cd /home/zyktrcn/sgx/ipp-crypto/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyktrcn/sgx/ipp-crypto /home/zyktrcn/sgx/ipp-crypto/sources/ippcp/crypto_mb/src/apps /home/zyktrcn/sgx/ipp-crypto/_build /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps /home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sources/ippcp/crypto_mb/src/apps/CMakeFiles/ba_mbx_x25519.dir/depend

