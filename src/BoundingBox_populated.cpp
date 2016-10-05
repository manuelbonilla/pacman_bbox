#include <pacman_bb.hpp>
#include <pacman_bb_utils.hpp>
#include <iostream>
#include <list>
#include <fstream>

using namespace pacman;


int main ( int argc, char* argv[] )
{
    // default definitions
    double gain = 0.9;
    double min_volume = 5E-7;
    std::string object_name("no_object");
    switch ( argc )
    {
    case 2:
        // std::cout << "Filename here" << std::endl;
        object_name = std::string(argv[1]);
        break;
    case 3:
        object_name = std::string(argv[1]);
        gain = std::atof ( argv[2] );
        break;
    case 4:
        object_name = std::string(argv[1]);
        gain = std::atof ( argv[2] );
        min_volume = std::atof ( argv[3] );
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
    // std::cout << "Gain: " << gain << "\tmin_volume" << min_volume << std::endl;
    sorted_boxes = extractBoxes ( ObjectOriginal , gain, min_volume);
// 
    // std::cout << ObjectOriginal.T << std::endl;
    // std::cout << ObjectOriginal.Isobox.block ( 0, 0, 1, 3 ) << " " << ObjectOriginal.Isobox.block ( 1, 0, 1, 3 ) << std::endl;



    std::ofstream results_file;
    results_file.open("results_c.txt");

    std::ofstream database_file;
    database_file.open("database_populated.csv", std::ofstream::out | std::ofstream::app);
    // database_file.open("database.csv");

    std::cout << "No. Boxes: " << sorted_boxes.size() << std::endl ;

    // std::vector< Eigen::MatrixXd> trasformations =  get_populated_TrasformsforHand( sorted_boxes, ObjectOriginal);

    // std::vector< Eigen::MatrixXd> trasformations =  getTrasformsforHand( sorted_boxes, ObjectOriginal);

    while (!sorted_boxes.empty())
    {

        // std::vector< Eigen::MatrixXd> trasformations =  get_populated_TrasformsforHand( sorted_boxes.front(), ObjectOriginal);
        std::vector< Eigen::MatrixXd> trasformations =  get_populated_TrasformsforHand( sorted_boxes.front(), ObjectOriginal);
        // std::cout << "Transformation:" << std::endl << sorted_boxes.front().T << std::endl << "det: " << sorted_boxes.front().T.determinant() << std::endl;;
        // std::cout <<
        //<< "Transformation:" << std::endl <<
        // sorted_boxes.front().T << std::endl
        // << "det: " << sorted_boxes.front().T.determinant() << std::endl;;
        std::cout << "No. trasformations: " << trasformations.size() << std::endl;
        // ;
        for (int i = 0 ; i < trasformations.size() ; i++)
        {

            // std::cout<< "Transform for Hand" <<std::endl;
            // std::cout<< "det: " << trasformations[i].determinant() << std::endl;
            // std::cout << "Box_" << i + 1
            //           << std::endl
            //           << trasformations[i] << std::endl
            //           << "det: " << trasformations[i].determinant() << std::endl;

            // if(trasformations[i].determinant() < 0.5)
            // {
            //     std::cout << "REally bad" << std::endl;
            //     exit(1);
            // }
            // results_file << trasformations[i] << std::endl;
            // results_file << "0 0 0 0 0 0" << std::endl;
            // results_file << sorted_boxes.front().T << std::endl;
            // results_file << sorted_boxes.front().Isobox.block ( 0, 0, 1, 3 ) << " " << sorted_boxes.front().Isobox.block ( 1, 0, 1, 3 ) << std::endl;

            database_file   << object_name << ","
                            << trasformations[i](0,0) << "," << trasformations[i](0,1) << "," << trasformations[i](0,2) << ","
                            << trasformations[i](1,0) << "," << trasformations[i](1,1) << "," << trasformations[i](1,2) << ","
                            << trasformations[i](2,0) << "," << trasformations[i](2,1) << "," << trasformations[i](2,2) << ","
                            << trasformations[i](0,3) << "," << trasformations[i](1,3) << "," << trasformations[i](2,3) << std::endl;


        }
        sorted_boxes.pop_front();
    }

    return 0;
}

