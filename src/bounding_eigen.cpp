// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>
#include <eigen3/Eigen/Dense>

typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

using Eigen::MatrixXd;

std::vector<Object3d> FindBestSplit ( Object3d& Object );
Object2d  Project2plane ( const Object3d& Object, int plane );
void splitSingleDirection(const Object2d& face_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction);

int main()
{

    Point2d* temp = new Point2d[4000];
    Object2d tmp2;
    tmp2.reserve(4000);
    tmp2.resize(4000);

    int num_points;
    float x, y, z;
    std::cin >> num_points;

    Object3d Object;
    //Eigen::MatrixXd object_eigen ( num_points,3 );

// Load object
    for ( unsigned int i = 0; i < num_points; ++i ) 
    {
        std::cin >> x;
        std::cin >> y;
        std::cin >> z;

        if ((i % 10) == 0)
        {
            Object.push_back ( Point3d ( x,y,z ) );
        }
// object_eigen(i,0) = x;
//object_eigen(i,1) = y;
//object_eigen(i,2) = z;
//std::cout << x << " " << y << std::endl;

    }

    std::vector<Object3d> SplitedObject;

    SplitedObject = FindBestSplit ( Object );

    return 0;

    K::Iso_cuboid_3 box1 = CGAL::bounding_box ( SplitedObject[0].begin(), SplitedObject[0].end() );
    K::Iso_cuboid_3 box2 = CGAL::bounding_box ( SplitedObject[1].begin(), SplitedObject[1].end() );
    K::Iso_cuboid_3 Objectbox = CGAL::bounding_box ( Object.begin(), Object.end() );
    std::cout << box1 << std::endl;
    std::cout << box2 << std::endl;
    std::cout << Objectbox << std::endl;

// if ( (box1.volume() + box2.volume()) < Objectbox.volume() )

    return 0;
}


std::vector<Object3d> FindBestSplit ( Object3d& Object )
{
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;
    float x,y,z;
    int cutting_direction = 0;
//Object2d face_pca;


    Object2d face, face_pca;

    Eigen::MatrixXd face_eigen ( Object.size(),2 );
    Eigen::MatrixXd face_pca_eigen ( Object.size(),2 );



    for ( unsigned int i = 0; i < 3; i++ ) {

        std::cout << "for i:" << i << std::endl;
        switch ( i ) {
        case 0:
            face = Project2plane ( Object, 0 ); //xy
            break;
        case 1:
            face = Project2plane ( Object, 1 );
            break;
        case 2:
            face = Project2plane ( Object, 2 );
            break;

        }

        std::cout << "projected!" << std::endl;

        for ( int j=0; j<face.size(); j++ ) {

            // std::cout << "for j:" << j << std::endl;

            face_eigen ( j,0 ) =face[j].x();
            face_eigen ( j,1 ) =face[j].y();

        }


        //std::cout << "Covariance matrix:" << std::endl << face.transpose()*face<< std::endl;
        
        {
          {
            Eigen::JacobiSVD<MatrixXd> SVD_eigen;
            {
            Eigen::MatrixXd tempM2=face_eigen.transpose()*face_eigen;
            SVD_eigen.compute ( tempM2, Eigen::ComputeThinU | Eigen::ComputeThinV );
            std::cout << "Its singular values are:" << std::endl << SVD_eigen.singularValues() << std::endl;
            std::cout << "Its left singular vectors are the columns of the thin U matrix:" << std::endl << SVD_eigen.matrixU() << std::endl;
            std::cout << "Its right singular vectors are the columns of the thin V matrix:" << std::endl << SVD_eigen.matrixV() << std::endl;
            }
            
            Eigen::MatrixXd Un = SVD_eigen.matrixU();
            {
              Eigen::MatrixXd U = SVD_eigen.matrixU();

              face_pca.clear();

              Un.col ( 0 ) =  U.col ( 0 ) / U.col ( 0 ).norm();
              Un.col ( 1 ) =  U.col ( 1 ) / U.col ( 1 ).norm();
            }
            std::cout << "U normalized:" << std::endl << Un << std::endl;

            face_pca_eigen= face_eigen*Un;

            //std::cout << "face_pca_eigen:" << std::endl << face_pca_eigen << std::endl;

            std::cout << "Un destructor..." << std::endl;
          }

          std::cout << "SVD_eigen destructor..." << std::endl;

        }
        for ( int l=0; l<face_pca_eigen.rows(); l++ ) {

            face_pca.push_back ( Point2d ( face_pca_eigen ( l,0 ), face_pca_eigen ( l,1 ) ) );
        }

        std::cout << "n points = " << face_pca.size() << std::endl;

        //Eigen::JacobiSVD<MatrixXd>::SingularValuesType invSingVals = svd.singularValues();
        //std::cout << "Reconstructed covariance matrix:" << std::endl << svd.matrixV() * invSingVals.asDiagonal() * svd.matrixU().transpose(
      
        K::Iso_rectangle_2 face_bb = CGAL::bounding_box ( face_pca.begin(), face_pca.end() );
        double area_total = face_bb.area();

        area_min = area_total;

        // Find the best split using horizontal direction
        splitSingleDirection(face_pca, area_min, cutting_point, cutting_direction, 0);
        // Find the best split using vertical direction
        splitSingleDirection(face_pca, area_min, cutting_point, cutting_direction, 1);

        cutting_point_vec.push_back ( cutting_point );
        area_min_vec.push_back ( area_min );
        cutting_direction_vec.push_back ( cutting_direction );

        //   std::cout << "Face " << i << std::endl;
        std::cout << cutting_point << " ";
        std::cout << cutting_direction ;
        std::cout << " " << area_min << " 0 0" <<  std::endl;

    }


   

//std::vector<Object3d> test;

//     double total_area_min = area_min_vec[0];
//     int total_min_index = 0, total_min_direction;
//     for ( unsigned int i; i < cutting_point_vec.size(); i++ ) {
//         if ( area_min_vec[i] < total_area_min ) {
//             total_min_index = i;
//         }
// 
//     }
// 
//     
//     
//     total_area_min = area_min_vec[total_min_index];
//     Point2d best_point = cutting_point_vec[total_min_index];
//     total_min_direction = cutting_direction_vec[total_min_index];
    
    std::cout << "**************************" << std::endl;

    Object3d temp_object1, temp_object2;
    
    std::vector <Object3d> split;
    split.push_back ( temp_object1 );
    split.push_back ( temp_object2 );
    
    
    return split;
/*
    for ( unsigned int i = 0; i < Object.size(); i++ ) {
        switch ( total_min_index ) {
        case 0:
            if ( total_min_direction == 0 ) {
                if ( Object[i].y() >= best_point.y() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            } else {
                if ( Object[i].x() >= best_point.x() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;

        case 1:
            if ( total_min_direction == 0 ) {
                if ( Object[i].z() >= best_point.y() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            } else {
                if ( Object[i].x() >= best_point.x() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;

        case 2:
            if ( total_min_direction == 0 ) {
                if ( Object[i].z() >= best_point.y() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            } else {
                if ( Object[i].y() >= best_point.x() ) {
                    temp_object1.push_back ( Object[i] );
                } else {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;


        }
    }

//     std::vector <Object3d> split;
//     split.push_back ( temp_object1 );
//     split.push_back ( temp_object2 );
// 
// 
//     return split;*/


}


// projections are defined as follows
// 0 = xy
// 1 = xz
// 2 = yz

Object2d Project2plane ( const Object3d& Object, int plane )
{

    Object2d projection;

    std::cout << "in fcn Project2plane:" << std::endl;
    std::cout << "case " << plane << std::endl;

    for ( unsigned int i = 0; i < Object.size(); i++ ) {

        std::cout << "i=" << i << std::endl;
        switch ( plane ) {
        case 0:
            projection.push_back( Point2d ( Object[i].x(), Object[i].y() ) );
            break;
        case 1:
        {
            projection.push_back ( Point2d ( Object[i].x(), Object[i].z() ) );
            break;
        }
        case 2:
            projection.push_back ( Point2d ( Object[i].y(), Object[i].z() ) );
            break;
        default:
            std::cout << "Error" << std::endl;
        }

    }
    std::cout << "case " << plane << std::endl;


    return projection;

}

// Find the best split using horizontal direction
void splitSingleDirection(const Object2d& face_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction)
{
        Object2d up, down;
        double area_up, area_down;

        bool directedSplit;

        for ( unsigned int k = 0; k < face_pca.size(); ++k ) {

            up.clear();
            down.clear();

            for ( int t = 0; t < face_pca.size(); ++t ) {
                if ( k==t ) {
                    continue;
                }

                if (cutting_direction == 0)
                {
                  directedSplit = face_pca[t].y() > face_pca[k].y();
                }
                else
                {
                  directedSplit = face_pca[t].x() > face_pca[k].x();
                }


                if ( directedSplit ) {
                    up.push_back ( Point2d ( face_pca[t].x(), face_pca[t].y() ) );
                }

                else {
                    down.push_back ( Point2d ( face_pca[t].x() ,face_pca[t].y() ) );
                }
            }

            if ( up.size() ==0 || down.size() ==0 ) {
                continue;
            }

            K::Iso_rectangle_2 up_bb = CGAL::bounding_box ( up.begin(), up.end() );
            K::Iso_rectangle_2 down_bb = CGAL::bounding_box ( down.begin(), down.end() );
            area_up= up_bb.area();
            area_down= down_bb.area();

            if ( area_up + area_down < area_min ) {
                area_min = area_up + area_down;
                cutting_point = face_pca[k];
                best_cutting_direction = cutting_direction;
            }

        }
}