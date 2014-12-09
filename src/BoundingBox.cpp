#include <pacman_bb.hpp>
#include <pacman_bb_utils.hpp>
#include <iostream>

using namespace pacman;

void printBox ( Box Box_in );

int main()
{
    double gain = 1.0;
    double  vol_gain = 0.98;
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

    ObjectOriginal.doPCA ( Eigen::Matrix<double, 4, 4>::Identity() );
    ObjectOriginal = ComputeBoundingBox ( ObjectOriginal );

    std::list< Box > cue, results;
    std::vector< Box > SplitedObject;

    cue.push_back ( ObjectOriginal );

    while ( !cue.empty() )
    {

        SplitedObject = FindBestSplit ( cue.front(), gain );

        if ( SplitedObject.size() == 2 )
        {

            if ( SplitedObject[0].Points.rows() > min_points && SplitedObject[1].Points.rows() > min_points )
            {
                SplitedObject[0].doPCA ( cue.front().T );
                SplitedObject[0] = ComputeBoundingBox ( SplitedObject[0] );

                SplitedObject[1].doPCA ( cue.front().T );
                SplitedObject[1] = ComputeBoundingBox ( SplitedObject[1] );

                cue.push_back ( SplitedObject[0] );
                cue.push_back ( SplitedObject[1] );

            }
            else
            {
                printBox ( cue.front() );
            }
        }
        else
        {
            printBox ( cue.front() );
        }

        cue.pop_front();

    }

    return 0;
}

void printBox ( Box Box_in )
{
    std::cout << Box_in.T << std::endl;
    std::cout << Box_in.Isobox.block ( 0,0,1,3 ) << " " << Box_in.Isobox.block ( 1,0,1,3 ) << std::endl;

    return;
}
