#===============================================================================
# Copyright 2019-2020 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#===============================================================================

# Security Linker flags

set(LINK_FLAG_SECURITY "")
set(LINK_FLAG_SECURITY "-Wl,-dynamic")

# Security Compiler flags

set(CMAKE_C_FLAGS_SECURITY "")
# Format string vulnerabilities
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -Wformat -Wformat-security -Werror=format-security")
# Security flag that adds compile-time and run-time checks
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -D_FORTIFY_SOURCE=2")
# Stack-based Buffer Overrun Detection
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -fstack-protector")
# Position Independent Execution (PIE)
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -fpic -fPIC")
# Enables important warning and error messages relevant to security during compilation
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -Wall")
# Warnings=errors
set(CMAKE_C_FLAGS_SECURITY "${CMAKE_C_FLAGS_SECURITY} -Werror")

# Linker flags

# Create shared library
set(LINK_FLAGS_DYNAMIC "-Wl,-shared")
# Add export files
set(LINK_FLAGS_DYNAMIC "-exported_symbols_list ${CRYPTO_MB_SOURCES_DIR}/cmake/crypto_mb.macosx.lib-export")
if(NOT OPENSSL_DISABLE)
    set(LINK_FLAGS_DYNAMIC "-exported_symbols_list ${LINK_FLAGS_DYNAMIC} ${CRYPTO_MB_SOURCES_DIR}/cmake/dll_export/crypto_mb_ssl.macosx.lib-export")
endif()

# Compiler flags

# Tells the compiler to align functions and loops
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -falign-functions=32 -falign-loops=32")

if(${CMAKE_BUILD_TYPE} STREQUAL "Release")
    # Optimization level = 3
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")
endif()

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_CXX_FLAGS}")

# Suppress warnings from casts from a pointer to an integer type of a different size
set(AVX512_CFLAGS "-Wno-pointer-to-int-cast")

# Optimisation dependent flags
set(AVX512_CFLAGS "${AVX512_CFLAGS} -xCORE-AVX512 -qopt-zmm-usage:high")
