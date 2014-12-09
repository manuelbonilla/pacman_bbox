// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/SVD>
#include <CGAL/centroid.h>


typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

std::vector<Object3d> FindBestSplit ( Object3d Object );
Object2d  Project2plane ( Object3d Object, int plane );
Eigen::MatrixXd vec2Eigen ( const Object3d& vin );

class CObject
{
public:
    Object3d Points;
    Eigen::MatrixXd T;

    //CObject();
    void SetPoints ( Eigen::MatrixXd& EigenPoints );

    //~CObject();

};

void CObject::SetPoints ( Eigen::MatrixXd& EigenPoints )
{

    //creo vettore di punti in terna pca
    for ( int l=0; l<EigenPoints.rows(); l++ )
    {
        Points.push_back ( Point3d ( EigenPoints ( l,0 ), EigenPoints ( l,1 ), EigenPoints ( l,2 ) ) );

    }

}


CObject PCA ( const Eigen::MatrixXd& object_eigen, const Object3d& Object );
void splitSingleDirection ( const  Object2d& vect_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction );

int main()
{

    int num_points;
    float x, y, z;
    std::cin >> num_points;

    Object3d Object;
    Eigen::MatrixXd object_eigen ( num_points,3 );

    // Load object
    for ( unsigned int i = 0; i < num_points; ++i )
    {
        std::cin >> x;
        std::cin >> y;
        std::cin >> z;
        Object.push_back ( Point3d ( x,y,z ) );

        object_eigen ( i,0 ) = x;
        object_eigen ( i,1 ) = y;
        object_eigen ( i,2 ) = z;

    }

    CObject pca_eigen;
    pca_eigen = PCA ( object_eigen, Object );

    //std::cout<<"pca_eigen.T \n"<<pca_eigen.T<<std::endl;

    std::vector<Object3d> SplitedObject;

    //SplitedObject = FindBestSplit( pca_eigen.Points  );
    SplitedObject = FindBestSplit ( Object );

    CObject box1, box2;
    box1 = PCA ( vec2Eigen ( SplitedObject[0] ), SplitedObject[0] );
    box2 = PCA ( vec2Eigen ( SplitedObject[1] ), SplitedObject[1] );

    //box1.T = pca_eigen.T*box1.T;
    //box2.T = pca_eigen.T*box2.T;

//  std::cout << vec2Eigen(pca_eigen.Points) << std::endl;
//  std::cout << std::endl;
    std::cout << pca_eigen.T << std::endl;
    std::cout << CGAL::bounding_box ( pca_eigen.Points.begin(), pca_eigen.Points.end() ) << std::endl;
    std::cout << box1.T << std::endl;
    std::cout << CGAL::bounding_box ( box1.Points.begin(), box1.Points.end() ) << std::endl;
    std::cout << box2.T  << std::endl;
    std::cout << CGAL::bounding_box ( box2.Points.begin(), box2.Points.end() ) << std::endl;



    //std::cout << CGAL::bounding_box(Object.begin(), Object.end()) << std::endl;


//
//  std::cout << std::endl;
//


    // K::Iso_cuboid_3 box1 = CGAL::bounding_box(SplitedObject[0].begin(), SplitedObject[0].end());
    //K::Iso_cuboid_3 box2 = CGAL::bounding_box(SplitedObject[1].begin(), SplitedObject[1].end());
    //K::Iso_cuboid_3 Objectbox = CGAL::bounding_box(Object.begin(), Object.end());




// std::cout << "box2 \t "<< box2 << std::endl;
    //std::cout << "Objectbox \t"<< Objectbox << std::endl;*/

// if ( (box1.volume() + box2.volume()) < Objectbox.volume() )





    return 0;
}
/*
std::vector<Object3d> FindBestSplit ( Object3d Object )
{
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;


  Object2d face;


  for (unsigned int i = 0; i < 3; i++)
  {

   switch (i)
    {
      case 0:
        face = Project2plane ( Object, 0); //xy
        break;
      case 1:
        face = Project2plane ( Object, 1);
        break;
      case 2:
        face = Project2plane ( Object, 2);
        break;
    }


    K::Iso_rectangle_2 face_bb = CGAL::bounding_box( face.begin(), face.end() );
    double area_total = face_bb.area();

    area_min = area_total;
    int cutting_direction = 0;

    // Find the best split using horizontal direction
    splitSingleDirection(face, area_min, cutting_point, cutting_direction, 0);
    // Find the best split using vertical direction
    splitSingleDirection(face, area_min, cutting_point, cutting_direction, 1);


   cutting_point_vec.push_back( cutting_point );
   area_min_vec.push_back(area_min);
   cutting_direction_vec.push_back(cutting_direction);

    //   std::cout << "Face " << i << std::endl;
//     std::cout <<"cutting_point \t" <<  cutting_point << std::endl;
//     std::cout <<"cutting_direction \t" <<  cutting_direction <<std::endl;
//     std::cout << "area_min \t " << area_min << std::endl;

  }


  double total_area_min = area_min_vec[0];
  int total_min_index = 0, total_min_direction;

  for (unsigned int i; i < cutting_point_vec.size(); i++)
  {
      if( area_min_vec[i] < total_area_min )
      {
          total_min_index = i;
      }

  }

  total_area_min = area_min_vec[total_min_index];
  Point2d best_point = cutting_point_vec[total_min_index];
  total_min_direction = cutting_direction_vec[total_min_index];

 //from 2d to 3d
  Object3d temp_object1, temp_object2;
  for (unsigned int i = 0; i < Object.size(); i++)
  {
      switch (total_min_index)
      {
          case 0:
              if(total_min_direction == 0)
              {
                  if (Object[i].y() >= best_point.y())
                  {
                    temp_object1.push_back(Object[i]);
                  }
                  else
                  {
                      temp_object2.push_back(Object[i]);
                  }
              }
              else
              {
                  if (Object[i].x() >= best_point.x())
                  {
                      temp_object1.push_back(Object[i]);
                    }
                    else
                    {
                        temp_object2.push_back(Object[i]);
                    }
              }
              break;

          case 1:
              if(total_min_direction == 0)
              {
                  if (Object[i].z() >= best_point.y())
                  {
                      temp_object1.push_back(Object[i]);
                  }
                  else
                  {
                      temp_object2.push_back(Object[i]);
                  }
              }
              else
              {
                  if (Object[i].x() >= best_point.x())
                  {
                      temp_object1.push_back(Object[i]);
                  }
                  else
                  {
                      temp_object2.push_back(Object[i]);
                  }
              }
              break;

          case 2:
              if(total_min_direction == 0)
              {
                  if (Object[i].z() >= best_point.y())
                  {
                      temp_object1.push_back(Object[i]);
                  }
                  else
                  {
                      temp_object2.push_back(Object[i]);
                  }
              }
              else
              {
                  if (Object[i].y() >= best_point.x())
                  {
                      temp_object1.push_back(Object[i]);
                  }
                  else
                  {
                      temp_object2.push_back(Object[i]);
                  }
              }
              break;


      }
  }

  std::vector <Object3d> split;
  split.push_back(temp_object1);
  split.push_back(temp_object2);

  return split;

}
*/

// projections are defined as follows
// 0 = xy CObject
// 1 = xz
// 2 = yz

Object2d  Project2plane ( Object3d Object, int plane )
{

    Object2d projection;

    for ( unsigned int i = 0; i < Object.size(); i++ )
    {
        switch ( plane )
        {
        case 0:
            projection.push_back ( Point2d ( Object[i].x(), Object[i].y() ) );
            break;
        case 1:
            projection.push_back ( Point2d ( Object[i].x(), Object[i].z() ) );
            break;
        case 2:
            projection.push_back ( Point2d ( Object[i].y(), Object[i].z() ) );
            break;
        default:
            std::cout << "Error" << std::endl;
        }

    }


    return projection;

}


CObject PCA ( const Eigen::MatrixXd& object_eigen, const Object3d& Object )
{
    Eigen::MatrixXd object_pca_eigen ( Object.size(),3 );
    Eigen::JacobiSVD<Eigen::MatrixXd> SVD_eigen;


    /*********/
    Eigen::MatrixXd data_m ( object_eigen.rows(),3 );
    Eigen::MatrixXd mean_data;

    mean_data = object_eigen.colwise().mean();

    for ( int i = 0; i < object_eigen.rows(); i++ )
    {
        data_m.block<1,3> ( i,0 ) = object_eigen.block<1,3> ( i,0 ) - mean_data;
//      if (i <10)
//        std::cout << data_m.block<1,3>(i,0) << std::endl;
    }


    Eigen::MatrixXd tempM2 = ( data_m.transpose() *data_m ) / ( double ) data_m.rows();

    //std::cout << "mean_size = " << mean_data.rows() << "  " << mean_data.cols() << std::endl;
    //std::cout << mean_data << std::endl;
    //std::cout << (double )data_m.rows() << std::endl;
    //std::cout << "Covar Matrix \n" << tempM2 << std::endl;

    /**********/


    SVD_eigen.compute ( tempM2, Eigen::ComputeFullU | Eigen::ComputeFullV );
//      std::cout << "Its singular values are:" << std::endl << SVD_eigen.singularValues() << std::endl;
//      std::cout << "Its left singular vectors are the columns of the thin U matrix:" << std::endl << SVD_eigen.matrixU() << std::endl;
//      std::cout << "Its right singular vectors are the columns of the thin V matrix:" << std::endl << SVD_eigen.matrixV() << std::endl;
// //
    //Eigen::MatrixXd Un = SVD_eigen.matrixU();
    Eigen::MatrixXd U = SVD_eigen.matrixU();

//     Un.col ( 0 ) =  U.col ( 0 ) / U.col ( 0 ).norm();
//     Un.col ( 1 ) =  U.col ( 1 ) / U.col ( 1 ).norm();
//     Un.col ( 2 ) =  U.col ( 2 ) / U.col ( 2 ).norm();



    //std::cout << "U normalized:" << std::endl << Un << std::endl;

    //object_pca_eigen= object_eigen*Un;
    object_pca_eigen= data_m*U;



    CObject ObjectPCA;



    Eigen::MatrixXd T = Eigen::MatrixXd::Identity ( 4,4 );
    T.block<3,3> ( 0,0 ) = U;


    /*Point3d centroid = CGAL::centroid(ObjectPCA.Points.begin(), ObjectPCA.Points.end(),CGAL::Dimension_tag<0>());
    std::cout<<"centroid \t"<<centroid<<std::endl;
    T(0,3)= centroid.x();
    T(1,3)= centroid.y();
    T(2,3)= centroid.z();*/
    ObjectPCA.SetPoints ( object_pca_eigen );
    T ( 0,3 ) = mean_data ( 0,0 );
    T ( 1,3 ) = mean_data ( 0,1 );
    T ( 2,3 ) = mean_data ( 0,2 );

//    Eigen::MatrixXd data_t = object_eigen;
//     ObjectPCA.SetPoints( data_t );
//    T = Eigen::MatrixXd::Identity(4,4);


    ObjectPCA.T = T;


    return ObjectPCA;
}
/*
void splitSingleDirection(const Object2d& vect_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction)
{
    Object2d up, down, hull;
    double area_up, area_down, convex_area, Area, teta;
    Object2d face_pca;

    bool directedSplit;


  for ( unsigned int k = 0; k < vect_pca.size(); ++k )
  {

    up.clear();
    down.clear();

    for ( int t = 0; t < vect_pca.size(); ++t )
    {
      if ( k==t )
      {
        continue;
      }

      if (cutting_direction == 0)
      {
        directedSplit = vect_pca[t].y() > vect_pca[k].y();
      }

      else
      {
        directedSplit = vect_pca[t].x() > vect_pca[k].x();
      }

      if ( directedSplit )
      {
        up.push_back ( Point2d ( vect_pca[t].x(), vect_pca[t].y() ) );
      }

      else
      {
        down.push_back ( Point2d ( vect_pca[t].x() ,vect_pca[t].y() ) );
      }
    }

    if ( up.size() ==0 || down.size() ==0 )
    {
        continue;
    }

    K::Iso_rectangle_2 up_bb = CGAL::bounding_box ( up.begin(), up.end() );
    K::Iso_rectangle_2 down_bb = CGAL::bounding_box ( down.begin(), down.end() );
    area_up= up_bb.area();
    area_down= down_bb.area();
    area_min = area_up + area_down;

    if ( area_up + area_down < area_min )
    {
      area_min = area_up + area_down;
      cutting_point = face_pca[k];
      best_cutting_direction = cutting_direction;
    }
  }
}*/



Eigen::MatrixXd vec2Eigen ( const Object3d& vin )
{

    Eigen::MatrixXd newObject ( vin.size(),3 );

    for ( unsigned int i=0; i < vin.size(); i++ )
    {
        newObject ( i,0 ) = vin[i].x();
        newObject ( i,1 ) = vin[i].y();
        newObject ( i,2 ) = vin[i].z();
    }

    return newObject;
}



std::vector<Object3d> FindBestSplit ( Object3d Object )
{
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;


    Object2d face;


    for ( unsigned int i = 0; i < 3; i++ )
    {

        switch ( i )
        {
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


        K::Iso_rectangle_2 face_bb = CGAL::bounding_box ( face.begin(), face.end() );
        double area_total = face_bb.area();

        area_min = area_total;
        int cutting_direction = 0;

        // Find the best split using horizontal direction

        for ( unsigned int k = 0; k < face.size(); ++k )
        {

            up.clear();
            down.clear();

            for ( int t = 0; t < face.size(); ++t )
            {
                if ( k==t )
                {
                    continue;
                }

                if ( face[t].y() > face[k].y() )
                {
                    up.push_back ( Point2d ( face[t].x(), face[t].y() ) );
                }

                else
                {
                    down.push_back ( Point2d ( face[t].x() ,face[t].y() ) );
                }
            }

            if ( up.size() ==0 || down.size() ==0 )
            {
                continue;
            }

            K::Iso_rectangle_2 up_bb = CGAL::bounding_box ( up.begin(), up.end() );
            K::Iso_rectangle_2 down_bb = CGAL::bounding_box ( down.begin(), down.end() );
            area_up= up_bb.area();
            area_down= down_bb.area();

            if ( area_up + area_down < area_min )
            {
                area_min = area_up + area_down;
                cutting_point = face[k];
                cutting_direction = 0;
            }

        }



        // Find the best split using vertical direction

        for ( unsigned int k = 0; k < face.size(); ++k )
        {

            right.clear();
            left.clear();

            for ( int t = 0; t < face.size(); ++t )
            {
                if ( k==t )
                {
                    continue;
                }

                if ( face[t].x() > face[k].x() )
                {
                    right.push_back ( Point2d ( face[t].x(), face[t].y() ) );
                }

                else
                {
                    left.push_back ( Point2d ( face[t].x() ,face[t].y() ) );
                }

            }

            if ( right.size() ==0 || left.size() ==0 )
            {
                continue;
            }

            K::Iso_rectangle_2 right_bb = CGAL::bounding_box ( right.begin(), right.end() );
            K::Iso_rectangle_2 left_bb = CGAL::bounding_box ( left.begin(), left.end() );
            area_right= right_bb.area();
            area_left= left_bb.area();

            if ( area_right + area_left < area_min )
            {
                area_min = area_right + area_left;
                cutting_point = face[k];
                cutting_direction = 1;
            }

        }

        cutting_point_vec.push_back ( cutting_point );
        area_min_vec.push_back ( area_min );
        cutting_direction_vec.push_back ( cutting_direction );

//   std::cout << "Face " << i << std::endl;
//   std::cout << cutting_point << " ";
//   std::cout << cutting_direction ;
//   std::cout << " " << area_min << " 0 0" <<  std::endl;

    }


    std::vector<Object3d> test;

    double total_area_min = area_min_vec[0];
    int total_min_index = 0, total_min_direction;
    for ( unsigned int i; i < cutting_point_vec.size(); i++ )
    {
        if ( area_min_vec[i] < total_area_min )
        {
            total_min_index = i;
        }

    }

    total_area_min = area_min_vec[total_min_index];
    Point2d best_point = cutting_point_vec[total_min_index];
    total_min_direction = cutting_direction_vec[total_min_index];

    Object3d temp_object1, temp_object2;
    for ( unsigned int i = 0; i < Object.size(); i++ )
    {
        switch ( total_min_index )
        {
        case 0:
            if ( total_min_direction == 0 )
            {
                if ( Object[i].y() >= best_point.y() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            else
            {
                if ( Object[i].x() >= best_point.x() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;

        case 1:
            if ( total_min_direction == 0 )
            {
                if ( Object[i].z() >= best_point.y() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            else
            {
                if ( Object[i].x() >= best_point.x() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;

        case 2:
            if ( total_min_direction == 0 )
            {
                if ( Object[i].z() >= best_point.y() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            else
            {
                if ( Object[i].y() >= best_point.x() )
                {
                    temp_object1.push_back ( Object[i] );
                }
                else
                {
                    temp_object2.push_back ( Object[i] );
                }
            }
            break;


        }
    }

    std::vector <Object3d> split;
    split.push_back ( temp_object1 );
    split.push_back ( temp_object2 );

    return split;

}
