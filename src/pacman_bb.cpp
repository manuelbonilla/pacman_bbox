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

            Eigen::MatrixXd U = SVD_eigen.matrixU();

            object_pca_eigen= data_m*U;

            SetPoints ( object_pca_eigen );

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



    Eigen::MatrixXd info_adams( Box  first_boxes, int distance )
    {
        double side_x, side_y,side_z,best_side;
        Eigen::Matrix<double, 4, 4> T_l,T_b;
        Eigen::Matrix<double, 3, 1> D;

        // isobox ( 0,0 ) vertex ( 0 ).x();  
        // isobox ( 0,1 ) vertex ( 0 ).y();
        // isobox ( 0,2 ) vertex ( 0 ).z();
        // isobox ( 1,0 ) vertex ( 7 ).x();
        // isobox ( 1,1 ) vertex ( 7 ).y();
        // isobox ( 1,2 ) vertex ( 7 ).z();

        //distance between vertex 0 and 7
        side_x = std::sqrt( std::pow( first_boxes.Isobox ( 0,0 ) - first_boxes.Isobox ( 1,0 ) , 2) );
        side_y = std::sqrt( std::pow( first_boxes.Isobox ( 0,1 ) -  first_boxes.Isobox ( 1,1 ) , 2) ); 
        side_z = std::sqrt( std::pow( first_boxes.Isobox ( 0,2 ) - first_boxes.Isobox ( 1,2 ),2) );

        std::cout<<"side_x"<<side_x<<std::endl;
        std::cout<<"side_y"<<side_y<<std::endl;
        std::cout<<"side_z"<<side_z<<std::endl;

        std::vector<double> figure;
        double max;
        int ori;

        figure.push_back(side_x);   //user will input side values
        figure.push_back(side_y);
        figure.push_back(side_z);   
  
        
        max=figure[0];  //assign max a value to avoid garbage
        
        for (int k=0; k<figure.size(); k++)
        {
            //if 'max' is less than figure[k] then assign it that value
            if (max <= figure[k])
            {
                max=figure[k];
                ori=k;  
            }
        }
        
        //ori=0 axis x
        //ori=1 axis y
        //ori=2 axis z

        switch(ori) //for orientation to the matrix T
        {
            case 0:

                D(0,0)=(side_x/2);
                D(1,0)=0;
                D(2,0)=0;

                break;

            case 1:

                D(0,0)=0;
                D(1,0)=(side_y/2);
                D(2,0)=0;

                break;

            case 2:

                D(0,0)=0;
                D(1,0)=0;
                D(2,0)=(side_z/2);

                break;
        }

      
   
        T_l.block<3,3> (0,0)=  Eigen::Matrix<double, 3, 3>::Identity();
        T_l.block<3,1> (0,3)= D;  
        T_l.block<1,3> (3,0)= Eigen::Matrix<double, 1, 3>::Zero();
        T_l (3,3)= 1.0;

        T_b=first_boxes.T*T_l; //transformation matrix for hand

        return T_b;

    }
















}
