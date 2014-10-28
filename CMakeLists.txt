

project( pacman_bbox )
cmake_minimum_required(VERSION 2.6.2)

find_package(CGAL QUIET COMPONENTS Core )
find_package(Eigen3 REQUIRED COMPONENTS Dense Geometry)

if ( EIGEN3_FOUND )
  INCLUDE_DIRECTORIES(${EIGEN3_INCLUDE_DIRS})
else()
    message(STATUS "This program requires the Eigen Headers, and will not be compiled.")
endif()

if ( CGAL_FOUND )
  include( ${CGAL_USE_FILE} )
  include( CGAL_CreateSingleSourceCGALProgram )
else()
    message(STATUS "This program requires the CGAL library, and will not be compiled.")
endif()

#include( CMAKE_CURRENT_SOURCE_DIR/include )

#add_executable(bounding src/bounding.cpp)
add_executable(bounding_eigen src/bounding_eigen.cpp)

#add_executable(code src/code.cpp)
