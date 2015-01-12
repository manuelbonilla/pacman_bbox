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
        double side_x, side_y,side_z;
        Eigen::Matrix<double, 4, 4> T_l;
        Eigen::Matrix<double, 3, 1> D,angle;
        

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

        Eigen::Matrix<double, 4, 1> F;  //auxiliary variables
        Eigen::Matrix<double, 3, 1> R;  

        //find vector D and R. D is used for translation and R is longest axis it used for orientation
        switch(ori) 
        {
            case 0:

                D(0,0)=(side_x/2)+distance;
                D(1,0)=0;
                D(2,0)=0;
                F=first_boxes.T.col(0);
                R.row(0)=F.row(0);
                R.row(1)=F.row(1);
                R.row(2)=F.row(2);
                break;

            case 1:

                D(0,0)=0;
                D(1,0)=(side_y/2)+distance;
                D(2,0)=0;
                F=first_boxes.T.col(1);
                R.row(0)=F.row(0);
                R.row(1)=F.row(1);
                R.row(2)=F.row(2);

                break;

            case 2:

                D(0,0)=0;
                D(1,0)=0;
                D(2,0)=(side_z/2)+distance;
                F=first_boxes.T.col(2);
                R.row(0)=F.row(0);
                R.row(1)=F.row(1);
                R.row(2)=F.row(2);

                break;
        }

       
        angle=FInd_angle(first_boxes);
        
        Eigen::Matrix<double, 2, 3> Orto;   //it used for calculates orthogonal vector
        double i,j,k;
        Eigen::Matrix<double, 3, 1> axis_x;

        Orto.row(0)=D.transpose();
        Orto.row(1)=angle.transpose();

        //vector products
        axis_x(0,0)= i =(Orto(0,1)*Orto(1,2))-(Orto(1,1)*Orto(0,2)); 
        axis_x(1,0)= j =-((Orto(0,0)*Orto(1,2))-(Orto(1,0)*Orto(0,2)));
        axis_x(2,0)= k =(Orto(0,0)*Orto(1,1))-(Orto(0,1)*Orto(1,1));
                
        // axis_x(0,1)=;
        // axis_x.push_back(j);
        // axis_x.push_back(k);

        //make a transformation
        T_l.block<3,1> (0,0)= axis_x;
        T_l.block<3,1> (0,1)= R;
        T_l.block<3,1> (0,2)=-angle;
        T_l.block<3,1> (0,3)= D;  
        T_l.block<1,3> (3,0)= Eigen::MatrixXd:: Zero(1,3);
        T_l (3,3)= 1.0;


        return T_l;

    }



    Eigen::MatrixXd FInd_angle( Box first_boxes)
    {
        Eigen::Matrix<double, 3, 1> Normal,Col3;
        double PI=3.14159265;
        int ori;

        Normal(0,0)=0;
        Normal(1,0)=0;
        Normal(2,0)=1;

        double x,y,z,sum,L1,min;
        std::vector<double> angle;
        Eigen::Matrix<double,4,1> T; 

        for(int i=0; i<=2; i++)
        {  
            //scalar product
            x=Normal(0,0)*first_boxes.T(0,i);
            y=Normal(1,0)*first_boxes.T(1,i);
            z=Normal(2,0)*first_boxes.T(2,i);

            sum=x+y+z;

            //length

            L1=abs(sqrt(pow(first_boxes.T(0,i),2)+pow(first_boxes.T(1,i),2)+pow(first_boxes.T(2,i),2)));

            angle.push_back( acos (sum / L1) * 180.0 / PI);

        }

        //find min angle

        min=angle[0];  //assign min a value to avoid garbage
        
        for (int k=0; k<angle.size(); k++)
        {
            //if 'min' is less than angle[k] then assign it that value
            if (min <= angle[k])
            {
                min=angle[k];
                ori=k;  
            }
        }

        switch(ori) 
        {
            case 0:

                T= first_boxes.T.col(0);

                break;

            case 1:

               T= first_boxes.T.col(1);

                break;

            case 2:

                T= first_boxes.T.col(2);

                break;
        }


        Col3.row(0)=T.row(0);
        Col3.row(1)=T.row(1);
        Col3.row(2)=T.row(2);


        return Col3;


    }












}
