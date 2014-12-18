#ifndef __PACMAN_BB_UTILS_HPP_
#define __PACMAN_BB_UTILS_HPP_

#include <pacman_bb.hpp>

#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <CGAL/array.h>


namespace pacman
{

typedef CGAL::Simple_cartesian<double> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

/** Function: FindBestSplit 
    * Inputs: gain, matrix
    * Output: vector 3d
    * Description: mapping points in three-dimensional space to points on a two-dimensional projection plane. 
    *			Our projections are defined as follows
	*			$)0 = xy 
	*			$)1 = xz
	*			$)2 = yz
    */
std::vector<Box> FindBestSplit ( Box Object_in, double gain );
 
/** Function: Project2plane 
    * Inputs: constant, vector 3d
    * Output: vector 2d
    * Description: Finds the best split using horizontal and vertical direction. For determinate the best split uses a 
    * 			   criterion based on the percentage of area 
    */
Object2d  Project2plane ( Object3d Object, int plane );
 
 /** Function: vec2Eigen
 	* Input: vector 3d
 	* Outpur: matrix
 	* Description: this function trasform vector to matrix
 */
Eigen::MatrixXd vec2Eigen ( Object3d& vin );

/** Function: Eigen2cgalvec
 	* Input: matrix 
 	* Outpur: vector 3d
 	* Description: this function trasform matrix to vector
 */

Object3d Eigen2cgalvec ( const Eigen::MatrixXd &Mat );
 
/** Function: ComputeBoundingBox
 	* Input: matrix 
 	* Outpur: vector
 	* Description: this function calculates isobox
 */
Box ComputeBoundingBox ( Box Box_in );



 
}

#endif
