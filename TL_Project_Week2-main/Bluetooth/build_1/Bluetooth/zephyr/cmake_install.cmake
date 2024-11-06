# Install script for directory: C:/ncs/v2.7.0/zephyr

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
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/suit-processor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/ncs/nordcodes/TLprojekti/tietoliikenteensovellus2024/TL_Project_Week2-main/Bluetooth/build_1/Bluetooth/zephyr/cmake/reports/cmake_install.cmake")
endif()

