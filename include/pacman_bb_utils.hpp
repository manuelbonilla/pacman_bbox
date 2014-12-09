#ifndef __PACMAN_BB_UTILS_HPP_
#define __PACMAN_BB_UTILS_HPP_

#include<pacman_bb.hpp>

#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <CGAL/array.h>


namespace pacman{

	typedef CGAL::Simple_cartesian<double> K;
	typedef K::Point_2                 Point2d;
	typedef K::Point_3                 Point3d;
	typedef std::vector<Point3d> Object3d;
	typedef std::vector<Point2d> Object2d;

	


	std::vector<Box> FindBestSplit ( Box Object_in );
	Object2d  Project2plane ( Object3d Object, int plane );
	Eigen::MatrixXd vec2Eigen( Object3d& vin );
	Object3d Eigen2cgalvec(  const Eigen::MatrixXd &Mat );

	//Box PCA(const Eigen::MatrixXd& object_eigen, const Eigen::Matrix<double, 4, 4>& Told);
	void splitSingleDirection(const  Object2d& vect_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction);
	Box ComputeBoundingBox ( Box Box_in);

}
#endif