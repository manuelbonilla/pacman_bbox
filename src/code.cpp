// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/SVD>
#include <CGAL/centroid.h>
#include <list>

typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;


std::vector<Object3d> FindBestSplit ( Object3d Object );
Object2d  Project2plane ( Object3d Object, int plane );
Eigen::MatrixXd vec2Eigen ( const Object3d& vin );

bool condition;
int indice;

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
    CObject box1;

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
    std::list<Object3d> taglio,results;

    taglio.push_front ( Object );

    while ( !taglio.empty() )
    {
        std::vector<Object3d> SplitedObject;
        std::list<Object3d>::iterator it1;
        std::cout <<"entro nel while"<<std::endl;

        it1=taglio.begin();

        SplitedObject = FindBestSplit ( taglio.front() );
        std::cout <<"dopo FindBestSplit"<<std::endl;

        if ( SplitedObject.size() ==0 )
        {
            results.push_back ( taglio.front() );
            taglio.erase ( it1 );
            std::cout <<"dentro results"<<std::endl;
        }

        else
        {
            if ( condition ==true )
            {
                //assert(SplitedObject.size()==2);
                taglio.erase ( it1 );
                taglio.push_back ( SplitedObject[0] );
                taglio.push_back ( SplitedObject[1] );
                std::cout <<"dentro else if"<<std::endl;
            }

            else
            {
                taglio.erase ( it1 );
                taglio.push_back ( SplitedObject[0] );
                std::cout <<"dentro else if else"<<std::endl;
            }	//results.push_back(taglio.front());
            //taglio.erase(it1);
        }

        std::cout <<"taglio.size(): "<< taglio.size() <<std::endl;
    }

    std::cout <<"esco while"<<std::endl;
    std::list<Object3d>::iterator it;

    for ( it=results.begin() ; it != results.end(); ++it )
    {
        CObject box;
        box= ( PCA ( vec2Eigen ( *it ), *it ) );
        std::cout <<"box.size()"<<box.Points.size() <<std::endl;
        std::cout << pca_eigen.T << std::endl;
        std::cout << CGAL::bounding_box ( pca_eigen.Points.begin(), pca_eigen.Points.end() ) << std::endl;
        std::cout << box1.T << std::endl;
        std::cout << CGAL::bounding_box ( box.Points.begin(), box.Points.end() ) << std::endl;
    }


    return 0;
}

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


//funzione che crea PCA tramite SVD
CObject PCA ( const Eigen::MatrixXd& object_eigen, const Object3d& Object )
{
    Eigen::MatrixXd object_pca_eigen ( Object.size(),3 );
    Eigen::JacobiSVD<Eigen::MatrixXd> SVD_eigen;
    Eigen::MatrixXd data_m ( object_eigen.rows(),3 );
    Eigen::MatrixXd mean_data;

    mean_data = object_eigen.colwise().mean();

    for ( int i = 0; i < object_eigen.rows(); i++ )
    {
        data_m.block<1,3> ( i,0 ) = object_eigen.block<1,3> ( i,0 ) - mean_data;

    }


    Eigen::MatrixXd tempM2 = ( data_m.transpose() *data_m ) / ( double ) data_m.rows();

    SVD_eigen.compute ( tempM2, Eigen::ComputeFullU | Eigen::ComputeFullV );

    Eigen::MatrixXd U = SVD_eigen.matrixU();

    object_pca_eigen= data_m*U;

    CObject ObjectPCA;

    Eigen::MatrixXd T = Eigen::MatrixXd::Identity ( 4,4 );
    T.block<3,3> ( 0,0 ) = U;

    ObjectPCA.SetPoints ( object_pca_eigen );
    T ( 0,3 ) = mean_data ( 0,0 );
    T ( 1,3 ) = mean_data ( 0,1 );
    T ( 2,3 ) = mean_data ( 0,2 );

    ObjectPCA.T = T;
    return ObjectPCA;
}


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


//trovo miglior taglio possibile
std::vector<Object3d> FindBestSplit ( Object3d Object )
{
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min,prova;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec,test;
    std::vector<int> cutting_direction_vec;
    double gain=0.1;
    double A_sum;
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
            A_sum=area_up + area_down;

            if ( A_sum < gain*area_min )
            {
                std::cout << "good by criterion up" << std::endl;
                area_min = A_sum;
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
            A_sum=area_right + area_left;
            if ( ( A_sum < area_min ) && ( A_sum/area_total <gain ) )
            {
                std::cout << "good by criterion" << std::endl;
                area_min = A_sum;
                cutting_point = face[k];
                cutting_direction = 1;
            }

        }

        std::cout<<"qui"<<std::endl;
        cutting_point_vec.push_back ( cutting_point );
        area_min_vec.push_back ( area_min );
        cutting_direction_vec.push_back ( cutting_direction );



    }


    //double total_area_min,ans;
    int total_min_index = 0, total_min_direction;
    //std::vector<double> test;
    std::vector <Object3d> split;
    double total_area_min = area_min_vec[0];

    for ( unsigned int i = 0; i < cutting_point_vec.size(); i++ )
    {
        if ( area_min_vec[i]<total_area_min )
        {
            total_min_index = i;
            total_area_min=area_min_vec[i];
        }

    }



//if(cutting_point_vec.size()>=1)
//{
    //total_area_min = area_min_vec[total_min_index];
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

    if ( temp_object1.size() ==0 && temp_object2.size() >0 )
    {
        condition=false;
        split.push_back ( temp_object2 );
        //indice=1;
    }

    if ( temp_object2.size() ==0 && temp_object1.size() >0 )
    {
        condition=false;
        split.push_back ( temp_object1 );
        //indice=0;
    }


    if ( temp_object1.size() ==0 && temp_object2.size() ==0 )
    {
        //condition=true;
        std::cout << "void return" << std::endl;
        split.clear();
        //temp_object2.clear();
        //split.push_back(temp_object1);
        //split.push_back(temp_object2);

    }


    if ( temp_object1.size() >0 && temp_object2.size() >0 )
    {
        split.push_back ( temp_object1 );
        split.push_back ( temp_object2 );
        condition=true;
    }
    return split;

}

