// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>

typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

std::vector<Object3d> FindBestSplit ( Object3d Object );
Object2d  Project2plane ( Object3d Object, int plane );


int main()
{

    int num_points;
    float x, y, z;
    std::cin >> num_points;

    Object3d Object;

    // Load object
    for ( unsigned int i = 0; i < num_points; ++i )
    {
        std::cin >> x;
        std::cin >> y;
        std::cin >> z;
        Object.push_back ( Point3d ( x,y,z ) );

    }

    std::vector<Object3d> SplitedObject;

    SplitedObject = FindBestSplit ( Object );

    K::Iso_cuboid_3 box1 = CGAL::bounding_box ( SplitedObject[0].begin(), SplitedObject[0].end() );
    K::Iso_cuboid_3 box2 = CGAL::bounding_box ( SplitedObject[1].begin(), SplitedObject[1].end() );
    K::Iso_cuboid_3 Objectbox = CGAL::bounding_box ( Object.begin(), Object.end() );
    std::cout << box1 << std::endl;
    std::cout << box2 << std::endl;
    std::cout << Objectbox << std::endl;


// if ( (box1.volume() + box2.volume()) < Objectbox.volume() )





    return 0;
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
        std::cout << cutting_point << " ";
        std::cout << cutting_direction ;
        std::cout << " " << area_min << " 0 0" <<  std::endl;

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


// projections are defined as follows
// 0 = xy
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
