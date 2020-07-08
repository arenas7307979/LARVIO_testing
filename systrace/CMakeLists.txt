cmake_minimum_required(VERSION 2.8.3)
project(systrace)


# Disable in-source build
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES ON)

set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-std=c++11")

set(PROJECT_VERSION "")


# ------------------------------------------------------
#   library names and directries
# ------------------------------------------------------

set(PROJECT_DLL_VERSION "${PROJECT_VERSION}")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_INSTALL_PREFIX}/lib/cmake/" "/usr/lib/cmake" "/usr/local/lib/cmake")
option(USE_OWN_EIGEN3 "Set to OFF to use a standard eigen3 version" ON)
option(BUILD_SHARED_LIBS "Set to OFF to build static libraries" ON)
option(USE_CONTRIB "Set ON to use OpenCV contrib modules" OFF)

# ------------------------------------------------------
#   find dependencies
# ------------------------------------------------------
#find_package(OpenCV 3.0 REQUIRED)
#include_directories(${OpenCV_INCLUDE_DIRS})
#if(USE_CONTRIB)
#    add_definitions(-DUSE_CONTRIB)
#endif()
#set(REQUIRED_LIBRARIES "${OpenCV_LIBS}")

# ------------------------------------------------------
#   create configuration file from .in file
#   (if you use windows take care with paths)
# ------------------------------------------------------

configure_file("${PROJECT_SOURCE_DIR}/config.cmake.in" "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake")
install(FILES "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake" DESTINATION "share/${PROJECT_NAME}/")
#${PROJECT_BINARY_DIR} is /devel
#install cmake to devel-->/lib/cmake/systrace
install(FILES 
  ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
  DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/${PROJECT_NAME})

install(FILES 
  ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
  DESTINATION ${CMAKE_INSTALL_PREFIX}/../build/systrace/lib/cmake/${PROJECT_NAME})

# ------------------------------------------------------
#   utility directories
# ------------------------------------------------------
add_subdirectory(src)
