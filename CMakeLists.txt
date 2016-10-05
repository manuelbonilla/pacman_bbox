

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

find_package(PCL 1.7 REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})



include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/include )

add_executable(BoundingBox src/BoundingBox.cpp src/pacman_bb.cpp src/pacman_bb_utils.cpp)
target_link_libraries(BoundingBox ${PCL_LIBRARIES})

add_executable(test src/test.cpp )



find_package(Doxygen)
if(DOXYGEN_FOUND)
	configure_file(${CMAKE_CURRENT_SOURCE_DIR}/doxygen.in @ONLY)
	add_custom_target(doc
	${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/doxygen.in
	WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
	COMMENT "Generating API documentation with Doxygen" VERBATIM)
endif(DOXYGEN_FOUND)
