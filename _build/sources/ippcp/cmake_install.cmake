# Install script for directory: /home/zyktrcn/sgx/ipp-crypto/sources/ippcp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zyktrcn/intel/ippcp_2020.0.2")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intel64/" TYPE STATIC_LIBRARY FILES "/home/zyktrcn/sgx/ipp-crypto/_build/.build/RELEASE/lib/libippcp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/intel64/staticlib" TYPE FILE FILES
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_e9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_g9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_h9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_k0.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_l9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_m7.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_n0.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_n8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_p8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_s8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_w7.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_y8.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/zyktrcn/sgx/ipp-crypto/include/ippcp.h"
    "/home/zyktrcn/sgx/ipp-crypto/include/ippcpdefs.h"
    "/home/zyktrcn/sgx/ipp-crypto/include/ippversion.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/intel64/" TYPE SHARED_LIBRARY FILES "/home/zyktrcn/sgx/ipp-crypto/_build/.build/RELEASE/lib/libippcp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/intel64//libippcp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/intel64/staticlib" TYPE FILE FILES
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_e9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_g9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_h9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_k0.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_l9.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_m7.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_n0.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_n8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_p8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_s8.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_w7.h"
    "/home/zyktrcn/sgx/ipp-crypto/_build/include/autogen/single_cpu/ippcp_y8.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/zyktrcn/sgx/ipp-crypto/include/ippcp.h"
    "/home/zyktrcn/sgx/ipp-crypto/include/ippcpdefs.h"
    "/home/zyktrcn/sgx/ipp-crypto/include/ippversion.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/custom_library_tool_python" TYPE DIRECTORY FILES "/home/zyktrcn/sgx/ipp-crypto/tools/ipp_custom_library_tool_python/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zyktrcn/sgx/ipp-crypto/_build/sources/ippcp/crypto_mb/cmake_install.cmake")

endif()

