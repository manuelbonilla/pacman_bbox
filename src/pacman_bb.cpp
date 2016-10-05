#include <pacman_bb.hpp>
#include <pcl/common/centroid.h>
#include <pcl/point_traits.h>
#include <pcl/PointIndices.h>
#include <pcl/cloud_iterator.h>
#include <pacman_bb_utils.hpp>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/common/common.h>
#include <pcl/common/transforms.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/console/parse.h>
#include <pcl/console/print.h>
#include <pcl/io/pcd_io.h>
#include <algorithm>

//#include <boost/system.hpp>

namespace pacman
{	

        Box::Box ( int num_points )
        {

            Points = Eigen::MatrixXd::Zero ( num_points, 3 );
            T = Eigen::Matrix<double, 4, 4>::Identity();

        }
                
        void Box::setNumPoints(int num_points)
        {
            Points = Eigen::MatrixXd::Zero ( num_points, 3 );
            T = Eigen::Matrix<double, 4, 4>::Identity();
        }


        void Box::SetPoints ( const Eigen::MatrixXd& EigenPoints )
        //const Eigen::MatrixXd& object_eigen
        {

            Points = EigenPoints;
            T = Eigen::Matrix<double, 4, 4>::Identity();

        }

        void Box::SetT ( Eigen::Matrix<double , 4, 4>& Tnew )
        {
            Eigen::Matrix<double, 4, 4> Tprev = T;
            T = T*Tnew;
        }

        void Box::SetPoint ( int i, double x, double y, double z )
        {

            Points ( i,0 ) =  x;
            Points ( i,1 ) =  y;
            Points ( i,2 ) =  z;

        }


        void Box::doPCA ( const Eigen::Matrix<double, 4, 4>& Told )
        {
            Eigen::MatrixXd object_pca_eigen ( Points.rows(),3 );
            Eigen::JacobiSVD<Eigen::MatrixXd> SVD_eigen;

            Eigen::MatrixXd data_m ( Points.rows(),3 );
            Eigen::MatrixXd mean_data;

            mean_data = Points.colwise().mean();

            for ( int i = 0; i < Points.rows(); i++ )
            {
                data_m.block<1,3> ( i,0 ) = Points.block<1,3> ( i,0 ) - mean_data;
            }


            Eigen::MatrixXd tempM2 = ( data_m.transpose() *data_m ) / ( double ) data_m.rows();

            SVD_eigen.compute ( tempM2, Eigen::ComputeFullU | Eigen::ComputeFullV );

            // std::cout << "Data: " << std::endl << "det: " << tempM2.determinant() << std::endl;

            Eigen::MatrixXd U = SVD_eigen.matrixU();
            if (U.determinant() < 0.0)
            {
                U.block<3,1>(0,2) *= -1.0;
            }

            object_pca_eigen= data_m*U;

            SetPoints ( object_pca_eigen );
            // std::cout << "U:" << std::endl << U << std::endl << "det: " << U.determinant() << std::endl;

            T.block<3,3> ( 0,0 ) = U;
            T ( 0,3 ) = mean_data ( 0,0 );
            T ( 1,3 ) = mean_data ( 0,1 );
            T ( 2,3 ) = mean_data ( 0,2 );

            T = Told*T;

            pcl::PointCloud< pcl::PointXYZ > cloud_xyz;
            Eigen::Vector4f centroid_local;
                           
            for ( unsigned int i = 0; i < object_pca_eigen.rows(); i++)
            {
               cloud_xyz.push_back( pcl::PointXYZ(object_pca_eigen(i,0), object_pca_eigen(i,1), object_pca_eigen(i,2)));
            }

            pcl::compute3DCentroid ( cloud_xyz, centroid_local);
            
            centroid(0,0) = centroid_local(0);
            centroid(1,0) = centroid_local(1);
            centroid(2,0) = centroid_local(2);
            centroid(3,0) = 1;

            centroid = T*centroid;
        
          
        }
      
    void  Box::box_distance ( Box bigestbox, Box actual)
    { 
        distance_cm_orig = std::sqrt( std::pow( bigestbox.centroid(0,0) - actual.centroid(0,0) , 2)  +
                                                std::pow( bigestbox.centroid(1,0) -  actual.centroid(1,0) , 2)  + 
                                                std::pow( bigestbox.centroid(2,0) - actual.centroid(2,0) , 2) );   
    }

}
