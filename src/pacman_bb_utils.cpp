
#include <pacman_bb_utils.hpp>
#include <pacman_bb.hpp>
#include <boost/concept_check.hpp>
#include <Eigen/LU>


namespace pacman
{

/* projections are defined as follows*/
/* 0 = xy CObject*/
/* 1 = xz*/
/* 2 = yz*/

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

Eigen::MatrixXd vec2Eigen ( Object3d& vin )
{

    Eigen::MatrixXd newObject ( vin.size(), 3 );

    for ( unsigned int i = 0; i < vin.size(); i++ )
    {
        newObject ( i, 0 ) = vin[i].x();
        newObject ( i, 1 ) = vin[i].y();
        newObject ( i, 2 ) = vin[i].z();
    }

    return newObject;
}

Object3d Eigen2cgalvec ( const Eigen::MatrixXd &Mat )
{

    Object3d res;

    for ( unsigned int i = 0; i < Mat.rows(); i++ )
    {

        res.push_back ( Point3d ( Mat ( i, 0 ), Mat ( i, 1 ), Mat ( i, 2 ) ) );

    }

    return res;
}


std::vector<Box> FindBestSplit ( Box Object_in, double gain )
{

    Object3d Object = Eigen2cgalvec ( Object_in.Points );
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;
    bool foundBestSplit =  false;

    std::vector <Box> split;


    Object2d face;


    for ( unsigned int i = 0; i < 3; i++ )
    {



        switch ( i )
        {
        case 0:
            face = Project2plane ( Object, 0 ); /*xy*/
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

        /* Find the best split using horizontal direction*/
        foundBestSplit =  false;

        for ( unsigned int k = 0; k < face.size(); ++k )
        {

            up.clear();
            down.clear();

            for ( int t = 0; t < face.size(); ++t )
            {
                if ( k == t )
                {
                    continue;
                }

                if ( face[t].y() > face[k].y() )
                {
                    up.push_back ( Point2d ( face[t].x(), face[t].y() ) );
                }

                else
                {
                    down.push_back ( Point2d ( face[t].x() , face[t].y() ) );
                }
            }

            if ( up.size() == 0 || down.size() == 0 )
            {
                continue;
            }

            K::Iso_rectangle_2 up_bb = CGAL::bounding_box ( up.begin(), up.end() );
            K::Iso_rectangle_2 down_bb = CGAL::bounding_box ( down.begin(), down.end() );
            area_up = up_bb.area();
            area_down = down_bb.area();

            if ( area_up + area_down < area_min )
            {
                area_min = area_up + area_down;
                cutting_point = face[k];
                cutting_direction = 0;
                foundBestSplit =  true;
            }

        }


        /* Find the best split using vertical direction*/

        for ( unsigned int k = 0; k < face.size(); ++k )
        {

            right.clear();
            left.clear();

            for ( int t = 0; t < face.size(); ++t )
            {
                if ( k == t )
                {
                    continue;
                }

                if ( face[t].x() > face[k].x() )
                {
                    right.push_back ( Point2d ( face[t].x(), face[t].y() ) );
                }

                else
                {
                    left.push_back ( Point2d ( face[t].x() , face[t].y() ) );
                }

            }

            if ( right.size() == 0 || left.size() == 0 )
            {
                continue;
            }

            K::Iso_rectangle_2 right_bb = CGAL::bounding_box ( right.begin(), right.end() );
            K::Iso_rectangle_2 left_bb = CGAL::bounding_box ( left.begin(), left.end() );
            area_right = right_bb.area();
            area_left = left_bb.area();

            if ( area_right + area_left < area_min )
            {
                area_min = area_right + area_left;
                cutting_point = face[k];
                cutting_direction = 1;
                foundBestSplit =  true;
            }

        }

        if ( ( foundBestSplit ==  true ) && ( area_min < gain * area_total ) )
        {
            cutting_point_vec.push_back ( cutting_point );
            area_min_vec.push_back ( area_min );
            cutting_direction_vec.push_back ( cutting_direction );

        }

    }

    if ( cutting_point_vec.size() > 0 )
    {
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


        Box Box1 ( temp_object1.size() );
        Box Box2 ( temp_object2.size() );

        Box1.SetPoints ( vec2Eigen ( temp_object1 ) );
        Box2.SetPoints ( vec2Eigen ( temp_object2 ) );

        split.push_back ( Box1 );
        split.push_back ( Box2 );

    }

    return split;

}


Box ComputeBoundingBox ( Box Box_in )
{

    Object3d obj_temp = Eigen2cgalvec ( Box_in.Points );
    K::Iso_cuboid_3 c3 = CGAL::bounding_box ( obj_temp.begin(), obj_temp.end() );

    Eigen::Matrix<double, 2, 3> isobox;
    isobox ( 0, 0 ) = c3.vertex ( 0 ).x(); /*returns vertex(0).x()*/
    isobox ( 0, 1 ) = c3.vertex ( 0 ).y();
    isobox ( 0, 2 ) = c3.vertex ( 0 ).z();
    isobox ( 1, 0 ) = c3.vertex ( 7 ).x();
    isobox ( 1, 1 ) = c3.vertex ( 7 ).y();
    isobox ( 1, 2 ) = c3.vertex ( 7 ).z();
    Box_in.Isobox = isobox;

    Box_in.Isobox_volume = c3.volume();


    return Box_in;
}


bool compare_box (Box i, Box j)
{
    return (i.distance_cm_orig > j.distance_cm_orig);
}

std::list< Box > box_sort (std::list< Box > results)
{

    results.sort(compare_box);

    return results;
}


Eigen::MatrixXd info_adams( Box  first_boxes, Box ObjectOriginal)
{
    double side_x, side_y, side_z;
    Eigen::Matrix<double, 4, 4> T_l;
    Eigen::Matrix<double, 3, 2> angle;


    /* isobox ( 0,0 ) vertex ( 0 ).x();*/
    /* isobox ( 0,1 ) vertex ( 0 ).y();*/
    /* isobox ( 0,2 ) vertex ( 0 ).z();*/
    /* isobox ( 1,0 ) vertex ( 7 ).x();*/
    /* isobox ( 1,1 ) vertex ( 7 ).y();*/
    /* isobox ( 1,2 ) vertex ( 7 ).z();*/

    /*distance between vertex 0 and 7*/
    side_x = std::sqrt( std::pow( first_boxes.Isobox ( 0, 0 ) - first_boxes.Isobox ( 1, 0 ) , 2) );
    side_y = std::sqrt( std::pow( first_boxes.Isobox ( 0, 1 ) -  first_boxes.Isobox ( 1, 1 ) , 2) );
    side_z = std::sqrt( std::pow( first_boxes.Isobox ( 0, 2 ) - first_boxes.Isobox ( 1, 2 ), 2) );

    std::vector<double> figure;
    double max;
    int ori;

    figure.push_back(side_x);   /*user will input side values*/
    figure.push_back(side_y);
    figure.push_back(side_z);


    max = figure[0]; /*assign max a value to avoid garbage*/

    for (int k = 0; k < figure.size(); k++)
    {
        /*if 'max' is less than figure[k] then assign it that value*/
        if (max <= figure[k])
        {
            max = figure[k];
            ori = k;
        }
    }

    /*ori=0 axis x*/
    /*ori=1 axis y*/
    /*ori=2 axis z*/
    int flag_axis = ori;

    Eigen::Matrix<double, 4, 1> F;  /*auxiliary variables*/
    Eigen::Matrix<double, 3, 1> R;

    /*find vector x is nothing more than longest axis.*/
    switch (ori)
    {
    case 0:
        // std::cout << "Longest axis is X" << std::endl;
        F = first_boxes.T.col(0);

        break;

    case 1:
        // std::cout << "Longest axis is Y" << std::endl;
        F = first_boxes.T.col(1);

        break;

    case 2:
        // std::cout << "Longest axis is Z" << std::endl;
        F = first_boxes.T.col(2);

        break;
    }

    R.row(0) = F.row(0);
    R.row(1) = F.row(1);
    R.row(2) = F.row(2);
    // std::cout << "R :" << R << std::endl;

    angle = FInd_angle(first_boxes, figure, 0.005, flag_axis, ObjectOriginal);
    // std::cout << "angle" << angle << std::endl;

    Eigen::Matrix<double, 3, 1> third_col, axis_x;

    double i, j, k;

    third_col = angle.col(0);

    axis_x = R.transpose().cross(third_col.transpose()); /* calculates orthogonal vector*/

    /*make a transformation*/
    T_l.block<3, 1> (0, 0) = R;
    T_l.block<3, 1> (0, 1) = -axis_x; /* it is negative 'cause we need a right handed cordinate system*/
    T_l.block<3, 1> (0, 2) = angle.col(0);
    T_l.block<3, 1> (0, 3) = first_boxes.T.block<3, 1> (0, 3) + T_l.block<3, 3> (0, 0) * angle.col(1);
    T_l.block<1, 3> (3, 0) = Eigen::MatrixXd:: Zero(1, 3);
    T_l (3, 3) = 1.0;

    /* double det;*/
    /* det=T_l.block<3,3> (0,0).determinant();*/
    /* std::cout<<"det "<< det<<std::endl;*/

    return T_l;

}



Eigen::MatrixXd FInd_angle( Box first_boxes, std::vector<double> figure, double distance, int flag_axis, Box ObjectOriginal)
{
    Eigen::Matrix<double, 3, 1> Normal, Col3, D;
    double PI = 3.14159265;
    int ori;
    double x, y, z, sum, L1, min;
    std::vector<double> angle;
    Eigen::Matrix<double, 4, 1> T;

    Normal(0, 0) = 0;
    Normal(1, 0) = 0;
    Normal(2, 0) = 1;


    for (int i = 0; i <= 2; i++)
    {
        /*scalar product*/
        x = Normal(0, 0) * first_boxes.T(0, i);
        y = Normal(1, 0) * first_boxes.T(1, i);
        z = Normal(2, 0) * first_boxes.T(2, i);

        sum = x + y + z;

        /*length*/
        L1 = abs(sqrt(pow(first_boxes.T(0, i), 2) + pow(first_boxes.T(1, i), 2) + pow(first_boxes.T(2, i), 2)));
        // std::cout << "L: " << L1 << std::endl;
        if (L1 == 0)
        {
            angle.push_back( 1000 * 180.0 / PI);
            // std::cout << "Angle : " << 1000 * 180.0 / PI <<  std::endl;
            continue;
        }

        /*angle*/
        angle.push_back( acos (sum / L1) * 180.0 / PI);
        // std::cout << "Angle : " << acos (sum / L1) * 180.0 / PI <<  std::endl;
    }

    /*find min angle*/

    /*problema quando asse lungo è allineato con z*/

    min = angle[0] + 1000; /*assign min a value to avoid garbage*/
    int p = 2;
    ori = 1000;

    for (int k = 0; k < angle.size(); k++)
    {
        /*if 'min' is less than angle[k] then assign it that value*/
        if (flag_axis == k)
            continue;
        if (min >= angle[k])
        {
            min = angle[k];
            ori = k;
        }

    }

    /* std::cout <<"min angle "<< ori << std::endl;*/


    // std::cout << "Ori: " << ori << " flag_axis" << flag_axis << std::endl;

    /* Axis of the longest mvbb is the same as the axis with minimal angle of the z vector*/
    if (ori == flag_axis)
    {

        // std::cout << "I'm here again" << std::endl;
        angle.clear();

        Normal(0, 0) = -ObjectOriginal.centroid(0, 0) + first_boxes.centroid(0, 0);
        Normal(1, 0) = -ObjectOriginal.centroid(1, 0) + first_boxes.centroid(1, 0);
        Normal(2, 0) = -ObjectOriginal.centroid(2, 0) + first_boxes.centroid(2, 0);

        double normNormal = std::sqrt(Normal(0, 0) * Normal(0, 0) + Normal(1, 0) * Normal(1, 0) + Normal(2, 0) * Normal(2, 0));

        Normal(0, 0) = Normal(0, 0) / normNormal;
        Normal(1, 0) = Normal(1, 0) / normNormal;
        Normal(2, 0) = Normal(2, 0) / normNormal;
        /*              std::cout << "Problem happenning" << std::endl;*/
        for (int i = 0; i <= 2; i++)
        {
            /*scalar product*/
            x = Normal(0, 0) * first_boxes.T(0, i);
            y = Normal(1, 0) * first_boxes.T(1, i);
            z = Normal(2, 0) * first_boxes.T(2, i);

            sum = x + y + z;

            /*length*/
            L1 = abs(sqrt(pow(first_boxes.T(0, i), 2) + pow(first_boxes.T(1, i), 2) + pow(first_boxes.T(2, i), 2)));

            /*angle*/
            angle.push_back( acos (sum / L1) * 180.0 / PI);
            /*                  double dotv1v2 = 0;*/
            /*                  dotv1v2 = sum;*/
            /*                      angle.push_back( acos (dotv1v2) * 180.0 / PI);*/
            /*                      std::cout << "Angle : " << acos (sum / L1) * 180.0 / PI <<  std::endl;*/

        }

        /*find min angle*/

        /*problema quando asse lungo è allineato con z*/
        angle[flag_axis] = 360; /* just to force the method to avoid selecting the same axis*/
        min = angle[0]; /*assign min a value to avoid garbage*/



        for (int k = 0; k < angle.size(); k++)
        {
            /*if 'min' is less than angle[k] then assign it that value*/
            if (min >= angle[k])
            {
                min = angle[k];
                ori = k;
            }

        }


        // std::cout << "flag :" << flag_axis << " \t Axis : "  <<  ori << std::endl;

        switch (ori)
        {
        case 0:

            /* D(0,0)=(figure[0]/2)+distance;*/
            /* D(1,0)=0;*/
            /* D(2,0)=0;*/

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[0] / 2) + distance);
            T = first_boxes.T.col(0);

            break;

        case 1:

            /* D(0,0)=0;*/
            /* D(1,0)=(figure[1]/2)+distance;*/
            /* D(2,0)=0;*/

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[1] / 2) + distance);
            T = first_boxes.T.col(1);

            break;

        case 2:

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[2] / 2) + distance);
            T = first_boxes.T.col(2);

            break;
        }

        /**************************************************************/
    }
    else {
        // std::cout << "I'm here now" << std::endl;

        switch (ori)
        {
        case 0:

            /* D(0,0)=(figure[0]/2)+distance;*/
            /* D(1,0)=0;*/
            /* D(2,0)=0;*/

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[0] / 2) + distance);
            T = first_boxes.T.col(0);

            break;

        case 1:

            /* D(0,0)=0;*/
            /* D(1,0)=(figure[1]/2)+distance;*/
            /* D(2,0)=0;*/

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[1] / 2) + distance);
            T = first_boxes.T.col(1);

            break;

        case 2:

            D(0, 0) = 0;
            D(1, 0) = 0;
            D(2, 0) = -((figure[2] / 2) + distance);
            T = first_boxes.T.col(2);

            break;
        }


    }



    Col3.row(0) = T.row(0);
    Col3.row(1) = T.row(1);
    Col3.row(2) = T.row(2);

    Eigen::Matrix<double, 3, 1> R;
    Eigen::Matrix<double, 3, 2> Union;

    R = D;

    Union.block<3, 1>(0, 0) = -Col3;
    Union.block<3, 1>(0, 1) = R;

    // std::cout << "Union = " << Union <<  std::endl;


    return Union;


}

std::list<Box> extractBoxes ( Box ObjectOriginal, float gain, float min_volume, float min_points )
{


    std::list<Box> results;
    std::vector< Box > SplitedObject;
    std::list< Box > cue;
    cue.push_back ( ObjectOriginal );



    while ( !cue.empty() )
    {

        SplitedObject = FindBestSplit ( cue.front(), gain );
        /* Condition of gain*area is checked inside FindBestSplit fuction.*/
        /* Each component in SplitedObject showld contain at least 2 point to compute the area and PCA*/
        if ( SplitedObject.size() == 2 &&
                ( SplitedObject[0].Points.rows() > min_points && SplitedObject[1].Points.rows() > min_points ) )
        {

            SplitedObject[0].doPCA ( cue.front().T );
            SplitedObject[0] = ComputeBoundingBox ( SplitedObject[0] );

            SplitedObject[1].doPCA ( cue.front().T );
            SplitedObject[1] = ComputeBoundingBox ( SplitedObject[1] );

            /* Volume condition.*/
            /* TODO: This condition must be updated. See results to undertand better.*/

            if ( ( SplitedObject[0].Isobox_volume > min_volume ) && ( SplitedObject[1].Isobox_volume > min_volume ) )
            {
                cue.push_back ( SplitedObject[0] );
                cue.push_back ( SplitedObject[1] );
            }
            else
            {
                cue.front().box_distance( ObjectOriginal, cue.front()  );
                results.push_back  ( cue.front() );

            }

        }
        else
        {

            cue.front().box_distance( ObjectOriginal, cue.front()  );

            results.push_back  ( cue.front() );
        }

        cue.pop_front();




    }

    return box_sort(  results );
}


std::vector<Eigen::MatrixXd> getTrasformsforHand(std::list<Box> sorted_boxes, Box ObjectOriginal)
{

    std::vector<Eigen::MatrixXd> results;
    while (!sorted_boxes.empty() )
    {
        results.push_back(info_adams(sorted_boxes.front(), ObjectOriginal));
        sorted_boxes.pop_front();
    }

    return results;
}

std::vector<Eigen::MatrixXd> populate_face (Eigen::Vector3d axis_dimensions, int disc, double dist_hand, Eigen::Matrix4d T_init)
{
    // std::vector<Eigen::Matrix4d> results((disc+1)*(disc+1)*6, Eigen::Matrix4d::Identity());
    /*The total size of the output vertor is disc*dic*(disc-)*6*/
    /* it is because each side of each box face is discretized by disc, then the angles are as well
    but PI an -PI is the same so the last is not evaluated, then there are 6 faces
    example if disc =3 ... 4*4*4*6    */


    std::vector<Eigen::MatrixXd> results;
    results.clear();

 
    Eigen::Matrix3d m, m_start;

    //  Plane YZ;
    for (double i = -1.0 * axis_dimensions(1) / 2 ; i <= axis_dimensions(1) / 2; i = i + (axis_dimensions(1) / disc) )
    {
        for (double j = -1.0 * axis_dimensions(2) / 2 ; j <= axis_dimensions(2) / 2; j = j + (axis_dimensions(2) / disc) )
        {
            Eigen::Matrix4d start = Eigen::MatrixXd::Identity(4, 4);

            start(0, 3) = axis_dimensions(0) / 2 + dist_hand;
            start(1, 3) = i;
            start(2, 3) = j;
            m_start = Eigen::AngleAxisd( -M_PI / 2, Eigen::Vector3d::UnitY());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }

            start(0, 3) = -1.0 * (axis_dimensions(0) / 2 + dist_hand);
            m_start = Eigen::AngleAxisd( M_PI / 2, Eigen::Vector3d::UnitY());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }
        }
    }
    // Plane XZ;

    for (double i = -1.0 * axis_dimensions(0) / 2 ; i <= axis_dimensions(0) / 2; i = i + (axis_dimensions(0) / disc) )
    {
        for (double j = -1.0 * axis_dimensions(2) / 2 ; j <= axis_dimensions(2) / 2; j = j + (axis_dimensions(2) / disc) )
        {
            Eigen::Matrix4d start = Eigen::MatrixXd::Identity(4, 4);

            start(0, 3) = i;
            start(1, 3) = axis_dimensions(1) / 2 + dist_hand;
            start(2, 3) = j;
            m_start = Eigen::AngleAxisd( M_PI / 2, Eigen::Vector3d::UnitX());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }

            start(1, 3) = -1.0 * (axis_dimensions(1) / 2 + dist_hand);
            m_start = Eigen::AngleAxisd( -M_PI / 2, Eigen::Vector3d::UnitX());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }
        }
    }

    // Plane XY

    for (double i = -1.0 * axis_dimensions(0) / 2 ; i <= axis_dimensions(0) / 2; i = i + (axis_dimensions(0) / disc) )
    {
        for (double j = -1.0 * axis_dimensions(1) / 2 ; j <= axis_dimensions(1) / 2; j = j + (axis_dimensions(1) / disc) )
        {
            Eigen::Matrix4d start = Eigen::MatrixXd::Identity(4, 4);

            start(0, 3) = i;
            start(1, 3) = j;
            start(2, 3) = axis_dimensions(2) / 2 + dist_hand;
            m_start = Eigen::AngleAxisd( M_PI, Eigen::Vector3d::UnitX());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }

            start(2, 3) = -1.0 * (axis_dimensions(2) / 2 + dist_hand);
            m_start = Eigen::AngleAxisd( 0, Eigen::Vector3d::UnitX());
            for (double k = -M_PI ; k < M_PI; k = k + 2*M_PI / disc)
            {
                m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
                start.block<3, 3>(0, 0) = m;
                results.push_back(T_init * start);
            }
        }
    }
    return results;

}

std::vector<Eigen::MatrixXd> get_populated_TrasformsforHand(Box box, Box ObjectOriginal)
{
    std::vector<Eigen::MatrixXd> results;
    Eigen::Vector3d axis_dimensions;
    axis_dimensions <<  -box.Isobox( 0, 0)  + box.Isobox( 1, 0),
                        -box.Isobox( 0, 1)  + box.Isobox( 1, 1),
                        -box.Isobox( 0, 2)  + box.Isobox( 1, 2);
    results = populate_face(axis_dimensions, 3, 0.005, box.T);


    return results;
}



}

