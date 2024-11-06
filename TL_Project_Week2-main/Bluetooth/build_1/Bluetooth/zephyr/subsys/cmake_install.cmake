# Install script for directory: C:/ncs/v2.7.0/zephyr/subsys

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/ncs/toolchains/ce3b5ff664/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/canbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/debug/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/fb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/fs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/ipc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/logging/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/mem_mgmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/mgmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/modbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/pm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/portability/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/random/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/rtio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/sd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/stats/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/storage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/task_wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/testsuite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/tracing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/bluetooth/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/net/cmake_install.cmake")
endif()

