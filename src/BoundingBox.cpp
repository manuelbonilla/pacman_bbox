#include <pacman_bb.hpp>
#include <pacman_bb_utils.hpp>
#include <iostream>
#include <list>

using namespace pacman;

void printBox ( Box Box_in );

int main ( int argc, char* argv[] )
{
    // default definitions
    double gain = 1.0;
    double min_volume = 100;

    switch ( argc )
    {
    case 2:
        gain = std::atof ( argv[1] );
        break;
    case 3:
        gain = std::atof ( argv[1] );
        min_volume = std::atof ( argv[2] );
        break;

    }

    // double  vol_gain = 0.98;
    int min_points = 2;
    int num_points;
    float x, y, z;
    std::cin >> num_points;

    Box ObjectOriginal ( num_points );

    // Get the Object from the Original Shl file

    for ( unsigned int i = 0; i < num_points; ++i )
    {

        std::cin >> x;
        std::cin >> y;
        std::cin >> z;

        ObjectOriginal.SetPoint ( i, x, y, z );
    }

    // Perform an initial PCA, to aling the object to the best PCA. This make the code invariant to not suitable definitions in CAD Files.

    ObjectOriginal.doPCA ( Eigen::Matrix<double, 4, 4>::Identity() );
    ObjectOriginal = ComputeBoundingBox ( ObjectOriginal );

    
    std::list<Box> sorted_boxes;
    sorted_boxes = extractBoxes ( ObjectOriginal , gain, min_volume);
    std::vector< Eigen::MatrixXd> trasformations =  getTrasformsforHand( sorted_boxes, ObjectOriginal);
//     
//     
    for(int i = 0 ; i < trasformations.size() ; i++)
    {
        std::cout<< trasformations[i] <<std::endl;
        std::cout<< "0 0 0 0 0 0" <<std::endl;
        printBox( sorted_boxes.front() );
        sorted_boxes.pop_front();
    }

    return 0;
}

void printBox ( Box Box_in )
{

    std::cout << Box_in.T << std::endl;
    std::cout << Box_in.Isobox.block ( 0,0,1,3 ) << " " << Box_in.Isobox.block ( 1,0,1,3 ) << std::endl;

    return;
}
