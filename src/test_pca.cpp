// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>
#include <eigen3/Eigen/Dense>

#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/SVD>
typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

using Eigen::MatrixXd;

std::vector<Object3d> FindBestSplit ( Object3d Object, MatrixXd object_eigen );
Object2d  Project2plane ( Object3d Object, int plane );

int main()
{
  
  int num_points;
  float x, y;
  std::cin >> num_points;

  Object2d face;
  Eigen::MatrixXd face_eigen(num_points,2);
  
  // Load object
  for (unsigned int i = 0; i < num_points; ++i)
  {
    std::cin >> x;
    std::cin >> y;
    face.push_back(Point2d(x,y));
    face_eigen(i,0) = x;
    face_eigen(i,1) = y;  
  }


std::cout << "Covariance matrix:" << std::endl << face_eigen.transpose()*face_eigen << std::endl;
Eigen::JacobiSVD<MatrixXd> svd(face_eigen.transpose()*face_eigen, Eigen::ComputeThinU | Eigen::ComputeThinV);
std::cout << "Its singular values are:" << std::endl << svd.singularValues() << std::endl;
std::cout << "Its left singular vectors are the columns of the thin U matrix:" << std::endl << svd.matrixU() << std::endl;
std::cout << "Its right singular vectors are the columns of the thin V matrix:" << std::endl << svd.matrixV() << std::endl;

Eigen::JacobiSVD<MatrixXd>::SingularValuesType invSingVals = svd.singularValues();
std::cout << "Reconstructed covariance matrix:" << std::endl << svd.matrixV() * invSingVals.asDiagonal() * svd.matrixU().transpose()  << std::endl;

  return 1;
  
}