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

    std::list<Object3d> list;
    list.push_front ( Object );



    while ( !list.empty() )
    {
        std::vector<Object3d> SplitedObject;
        std::list<Object3d>::iterator it1,it2;
        std::cout <<"entro nel while"<<std::endl;

        it1=list.begin();
        it2 = list.begin();

        SplitedObject = FindBestSplit ( list.front() );


        if ( SplitedObject.size() ==0 )
        {

            it1 = list.erase ( it1 );
            it2 = list.erase ( it2 );

        }

        else
        {

            list.push_front ( SplitedObject[0] );
            list.push_back ( SplitedObject[1] );

        }



        CObject box;
        box= ( PCA ( vec2Eigen ( *it1 ), *it1 ) );
        std::cout <<"box.size()"<<box.Points.size() <<std::endl;
        std::cout << pca_eigen.T << std::endl;
        std::cout << CGAL::bounding_box ( pca_eigen.Points.begin(), pca_eigen.Points.end() ) << std::endl;
        std::cout << box1.T << std::endl;
        std::cout << CGAL::bounding_box ( box.Points.begin(), box.Points.end() ) << std::endl;
        list.erase ( it1,it2 );




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
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;
    int gain=0.8;
    double A1,A2;


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

        int cutting_direction = 0;

        splitSingleDirection ( face_pca, area_min, cutting_point,cutting_direction, 0 );

        // Find the best split using vertical direction
        splitSingleDirection ( face_pca, area_min, cutting_point,cutting_direction, 1 );

        cutting_point_vec.push_back ( cutting_point );
        area_min_vec.push_back ( area_min );
        cutting_direction_vec.push_back ( cutting_direction );
        std::cout << "Face " << i << std::endl;
        std::cout << cutting_point << " ";
        std::cout << cutting_direction ;
        std::cout << " " << area_min << " 0 0" <<  std::endl


    }


              //double total_area_min,ans;
              int total_min_index = 0, total_min_direction;
    std::vector<double> test;
    std::vector <Object3d> split;


    std::vector <Object3d> split;



    //if(A1 || A2 <gain)
    //{

    for ( unsigned int i = 0; i < cutting_point_vec.size(); i++ )
    {

        total_min_index = i;


    }

    double total_area_min = area_min_vec[0];


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


        //}


        split.push_back ( temp_object1 );
        split.push_back ( temp_object2 );

    }

    void splitSingleDirection ( const Object2d& face_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction )
    {
        Object2d up, down;
        double area_up, area_down;

        K::Iso_rectangle_2 face_bb = CGAL::bounding_box ( face.begin(), face.end() );
        double area_total = face_bb.area();

        area_min = area_total;

        bool directedSplit;

        for ( unsigned int k = 0; k < face_pca.size(); ++k )
        {
            up.clear();
            down.clear();

            for ( int t = 0; t < face_pca.size(); ++t )
            {
                if ( k==t )
                {
                    continue;
                }

                if ( cutting_direction == 0 )
                {
                    directedSplit = face_pca[t].y() > face_pca[k].y();
                }
                else
                {
                    directedSplit = face_pca[t].x() > face_pca[k].x();
                }

                if ( directedSplit )
                {
                    up.push_back ( Point2d ( face_pca[t].x(), face_pca[t].y() ) );
                }
                else
                {
                    down.push_back ( Point2d ( face_pca[t].x() ,face_pca[t].y() ) );
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
                cutting_point = face_pca[k];
                best_cutting_direction = cutting_direction;
            }
            cutting_point_vec.push_back ( cutting_point );
            area_min_vec.push_back ( area_min );
            cutting_direction_vec.push_back ( cutting_direction );
        }
    }

    prova ad usare una variabile globale per tenere informazione se best_split ha davvero dimensione 2 o no. Nel nostro es ce il;
    caso che e zero quindi mi va in bratta
    il codice.
    immetti il controllo per far smettere di ciclare. Prova solo con le aree e poi metti il controllo del papers ( chiedi a mirko l`albero ).
    metti in ordine il codice.



