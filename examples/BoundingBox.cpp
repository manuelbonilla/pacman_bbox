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
    int method = 0; //0 to old method, 1 for the populated one. Default is old
    switch ( argc )
    {
    case 2:
        object_name = std::string(argv[1]);
        break;
    case 3:
        object_name = std::string(argv[1]);
        method = std::atoi(argv[2]);
        break;
    case 4:
        object_name = std::string(argv[1]);
        method = std::atoi(argv[2]);
        gain = std::atof (argv[3]);
        break;
    case 5:
        object_name = std::string(argv[1]);
        method = std::atoi(argv[2]);
        gain = std::atof(argv[3]);
        min_volume = std::atof(argv[4]);
        break;

    }
    std::cout << "Working on object: " << object_name << std::endl;
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

    std::vector<std::pair<Box, std::vector< Eigen::MatrixXd> > > box_and_transformations;

    std::vector< Eigen::MatrixXd> trasformations_total;
    while (!sorted_boxes.empty())
    {
        if (method != 0 )
        {
            // box_and_transformations.push_back( std::pair<Box, std::vector< Eigen::MatrixXd> > (sorted_boxes.front(), get_populated_TrasformsforHand( sorted_boxes.front(), ObjectOriginal)));
        }
        else
        {
            std::vector<Eigen::MatrixXd> transformation;
            transformation.push_back(info_adams(sorted_boxes.front(), ObjectOriginal));
            box_and_transformations.push_back( std::pair<Box, std::vector< Eigen::MatrixXd> > (sorted_boxes.front(), transformation));
        }
        sorted_boxes.pop_front();
    }


//print results
    std::ofstream results_file;
    results_file.open((object_name + std::string("results_matlab.txt")).c_str());

    std::ofstream database_file;
    std::string database_name("database");

    if (method != 0)
    {
        database_name += std::string("populated");
    }
    database_file.open((database_name + std::string(".csv")).c_str(), std::ofstream::out | std::ofstream::app);


    for (int i = 0; i < box_and_transformations.size(); ++i)
    {
        for (int j = 0; j < box_and_transformations[i].second.size(); ++j)
        {
            //database Klampt
            database_file   << object_name << ","
                            << box_and_transformations[i].second[j](0, 0) << "," << box_and_transformations[i].second[j](0, 1) << "," << box_and_transformations[i].second[j](0, 2) << ","
                            << box_and_transformations[i].second[j](1, 0) << "," << box_and_transformations[i].second[j](1, 1) << "," << box_and_transformations[i].second[j](1, 2) << ","
                            << box_and_transformations[i].second[j](2, 0) << "," << box_and_transformations[i].second[j](2, 1) << "," << box_and_transformations[i].second[j](2, 2) << ","
                            << box_and_transformations[i].second[j](0, 3) << "," << box_and_transformations[i].second[j](1, 3) << "," << box_and_transformations[i].second[j](2, 3) << std::endl;

            results_file << box_and_transformations[i].second[j] << std::endl;
            results_file << "0 0 0 0 0 0" << std::endl;
            results_file << box_and_transformations[i].first.T << std::endl;
            results_file << box_and_transformations[i].first.Isobox.block ( 0, 0, 1, 3 ) << " " << box_and_transformations[i].first.Isobox.block ( 1, 0, 1, 3 ) << std::endl;


        }
    }

    database_file.close();
    results_file.close();

    return 0;
}

