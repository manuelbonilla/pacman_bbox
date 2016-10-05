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
    * Inputs: Gain, matrix
    * Output: Vector 3d
    * Description: Mapping points in three-dimensional space to points on a two-dimensional projection plane.
    *			Our projections are defined as follows
	*			$)0 = xy
	*			$)1 = xz
	*			$)2 = yz
*/
std::vector<Box> FindBestSplit ( Box Object_in, double gain );

/** Function: Project2plane
    * Inputs: Constant, vector 3d
    * Output: Vector 2d
    * Description: Finds the best split using horizontal and vertical direction. For determinate the best split uses a
    * 			   criterion based on the percentage of area
*/
Object2d  Project2plane ( Object3d Object, int plane );

/** Function: vec2Eigen
 	* Input: Vector 3d
 	* Outpur: Matrix
 	* Description: This function trasform vector to matrix
*/
Eigen::MatrixXd vec2Eigen ( Object3d& vin );

/** Function: Eigen2cgalvec
 	* Input: Matrix
 	* Outpur: Vector 3d
 	* Description: This function trasform matrix to vector
*/
Object3d Eigen2cgalvec ( const Eigen::MatrixXd &Mat );

/** Function: ComputeBoundingBox
 	* Input: Matrix
 	* Outpur: Vector
 	* Description: This function calculates isobox (bounding box)
*/
Box ComputeBoundingBox ( Box Box_in );


/**Function: Box_sort
	*Input: Boxes list
	*Output: Sorted Boxes list
	*Descprition: Organize boxes list in decrescent order whit compare_box function
*/
std::list< Box > box_sort ( std::list< Box > results);


/** Function: compare_box
 	* Input: Box
 	* Output: Boolean
 	* Description: This function is utilized for the box sort. Give in output true or false if
 	*				distance box i>distance box y
*/
bool compare_box (Box i, Box j);


/**Function: info_adams
	*Inputs: First sorted box
	*Ouput: Eigen matrix
	*Descprition: Calculates orientation and position matrix (SE(3)) for the soft hand.
	*			1) calculates the long side of the box
	*			2) make the trasformation matrix
	*				$) first column --> orthogonal vector and zeros for the last row
	*				$) second column --> longest axis and zeros for the last row
	*				$) third column --> axis with minimun angle and zeros for the last row
	*				$) fourth column --> length side with minimun angle/2 plus distance for the hand and one for the last row
*/
Eigen::MatrixXd info_adams( Box first_boxes, Box ObjectOriginal );


/**Function: FInd_angle
	*Inputs: Box, vector of the lenghts side, distance for put the hand
	*Output: Matrix
	*Description: Calculates axis that has the minimum angle fron normal vector.
	*			1) calculates the scalar vetor
	*			2) find min angle and take the respective axis
	*			3) make the column for the Transformation matrix
*/
Eigen::MatrixXd FInd_angle( Box first_boxes, std::vector<double> figure, double distance, int flag_axis, Box ObjectOriginal);

std::list<Box> extractBoxes ( pacman::Box ObjectOriginal, float gain, float vol_gain, float min_points = 2 );
std::vector<Eigen::MatrixXd> getTrasformsforHand(std::list<Box> sorted_boxes, Box ObjectOriginal);
std::vector<Eigen::MatrixXd> populate_face (Eigen::Vector3d axis_dimensions, int disc = 3, double dist_hand = 0.005, Eigen::Matrix4d T_init = Eigen::Matrix4d::Identity());
std::vector<Eigen::MatrixXd> get_populated_TrasformsforHand(Box box, Box ObjectOriginal);


}

#endif
