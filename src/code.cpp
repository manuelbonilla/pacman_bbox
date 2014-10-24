// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <CGAL/convex_hull_2.h>
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

std::vector<Object3d> FindBestSplit ( const MatrixXd& object_eigen, const Object3d& Object );
Object2d  Project2plane ( const MatrixXd& object_pca_eigen, int plane,  Object3d& vect_pca);
void splitSingleDirection(const  Object3d& vect_pca, double& area_min, Point2d& cutting_point, int& best_cutting_direction, int cutting_direction);
MatrixXd PCA(const MatrixXd& object_eigen, const Object3d& Object);


int main()
{

    int num_points;
    float x, y, z;
    std::cin >> num_points;

    Object3d Object;
    Eigen::MatrixXd object_eigen (num_points,3);
    
     for ( unsigned int i = 0; i < num_points; ++i ) 		//inserisco i valori della mesh in object
    {
        std::cin >> x;
        std::cin >> y;
        std::cin >> z;
        Object.push_back(Point3d(x,y,z));

        object_eigen(i,0) = x;
        object_eigen(i,1) = y;
        object_eigen(i,2) = z;
        
	}
	
	//std::cout << "object_eigen " << object_eigen<< std::endl;
	
	std::vector<Object3d> SplitedObject;

	SplitedObject = FindBestSplit ( object_eigen, Object );

    return 0;
}

//funzione che calcola la terna pca per l'intera mesh utilizzando svd
MatrixXd PCA(const MatrixXd& object_eigen, const Object3d& Object)
{
	Eigen::MatrixXd object_pca_eigen ( Object.size(),3);
    Eigen::JacobiSVD<MatrixXd> SVD_eigen;        
    
    Eigen::MatrixXd tempM2=object_eigen.transpose()*object_eigen;
    SVD_eigen.compute ( tempM2, Eigen::ComputeThinU | Eigen::ComputeThinV );
    std::cout << "Its singular values are:" << std::endl << SVD_eigen.singularValues() << std::endl;
    std::cout << "Its left singular vectors are the columns of the thin U matrix:" << std::endl << SVD_eigen.matrixU() << std::endl;
    std::cout << "Its right singular vectors are the columns of the thin V matrix:" << std::endl << SVD_eigen.matrixV() << std::endl;
  
    Eigen::MatrixXd Un = SVD_eigen.matrixU();
    Eigen::MatrixXd U = SVD_eigen.matrixU();
   
    Un.col ( 0 ) =  U.col ( 0 ) / U.col ( 0 ).norm();
    Un.col ( 1 ) =  U.col ( 1 ) / U.col ( 1 ).norm();
    Un.col ( 2 ) =  U.col ( 2 ) / U.col ( 2 ).norm();
    
    //std::cout << "U normalized:" << std::endl << Un << std::endl;

    object_pca_eigen= object_eigen*Un;
   
    return object_pca_eigen;
}

//funzione che calcola la proiezione dei punti sui 3 piani, usando i punti già in terna pca
Object2d Project2plane ( const MatrixXd& object_pca_eigen, int plane, Object3d& vect_pca)
{ 	
	Object2d projection;
    	 
	//std::cout << "in fcn Project2plane:" << std::endl;
	//std::cout << "size " << vect_pca.size() << std::endl; 

    for ( unsigned int i = 0; i < vect_pca.size(); i++ ) 
    {
  		//std::cout << "i=" << i << std::endl;

       switch ( plane )
        {

	       	case 0:
	        {
	            projection.push_back( Point2d ( vect_pca[i].x(), vect_pca[i].y() ) );
	            break;
	        }
	       case 1:
	       	{
	            projection.push_back ( Point2d ( vect_pca[i].x(), vect_pca[i].z() ) );
	           	break;
	        }
	         case 2:
	        {
	         	projection.push_back ( Point2d ( vect_pca[i].y(), vect_pca[i].z() ) );
	            break;
	        }
	        
	        default:
	              std::cout << "Error" << std::endl;
	    }

    }
     //std::cout << "case " << plane << std::endl;

	return projection;

 }

//funzione che calcola il miglior punto nel quale fare le bounding box
std::vector<Object3d> FindBestSplit ( const MatrixXd& object_eigen, const Object3d& Object  )
{
   	Eigen::MatrixXd pca_eigen(Object.size(),3);
   	pca_eigen = PCA(object_eigen,Object);

    double  area_min;
    Point2d cutting_point;
    std::vector<Point2d> cutting_point_vec;
    std::vector<double> area_min_vec;
    std::vector<int> cutting_direction_vec;
    int cutting_direction = 0;

    Object2d face;
    Object3d vect_pca;
    Eigen::MatrixXd object_proj(Object.size(),2);

	for ( unsigned int i = 0; i < 3; i++ ) 
	{

        std::cout << "for i:" << i << std::endl;
        switch ( i ) 
        {
	        case 0:
	            face = Project2plane ( pca_eigen, 0 ,vect_pca); //xy
	            break;
	        case 1:
	            face = Project2plane ( pca_eigen, 1 , vect_pca );
	            break;
	        case 2:
	            face = Project2plane ( pca_eigen, 2 ,vect_pca );
	            break;
        }
    
	    object_proj=PCA(face,Object); //richiamo funzione pca
	    
	     
	    //creo vettore di punti in terna pca   
	    for ( int l=0; l<object_proj.rows(); l++ ) 
	    {
			vect_pca.push_back ( Point3d ( object_proj ( l,0 ), object_proj ( l,1 ));
	        //std::cout << "vect_pca" << std::endl << vect_pca[l]<< std::endl;
	    }
	 	
	 	//std::cout << "size vect_pca" << std::endl << vect_pca.size()<< std::endl;
	 
	    K::Iso_rectangle_2 face_bb = CGAL::bounding_box ( vect_pca.begin(), vect_pca.end() ); //bb 2d terna pca
	    double area_total = face_bb.area();

	    area_min = area_total;

	    // Find the best split using horizontal direction
	    splitSingleDirection(vect_pca, area_min, cutting_point, cutting_direction, 0);
	    // Find the best split using vertical direction
	    splitSingleDirection(vect_pca, area_min, cutting_point, cutting_direction, 1);

	    cutting_point_vec.push_back ( cutting_point );
        area_min_vec.push_back ( area_min );
        cutting_direction_vec.push_back ( cutting_direction );

	}

	std::vector <Object3d> split;
    split.push_back ( cutting_point_vec );
   

    return split;
	
}

//questa funzione calcola il punto,direzione e verso, dove effettuare la bounding box
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

		// if ( area_up + area_down < area_min )
		// {
		// 	area_min = area_up + area_down;
		//     cutting_point = face_pca[k];
		//     best_cutting_direction = cutting_direction;
		// }

		//scrivo funzione costo che minimizza area totale 
		
		CGAL::convex_hull_2( vect_pca.begin(), vect_pca.end(), std::back_inserter(hull) );
		convex_area=hull.area();
		
		Area= area_min-convex_area;
		teta=area_min/convex_area;

		cutting_point = face_pca[k];
		best_cutting_direction = cutting_direction;

		if(teta<0.95)
		{
			splitSingleDirection(vect_pca, area_min, cutting_point, best_cutting_direction, cutting_direction);
		}

				
	}

   		
}












