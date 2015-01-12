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

    std::list< Box > cue, results;
    std::vector< Box > SplitedObject;

    cue.push_back ( ObjectOriginal );

    

    while ( !cue.empty() )
    {
        
        SplitedObject = FindBestSplit ( cue.front(), gain );
        // Condition of gain*area is checked inside FindBestSplit fuction.
        // Each component in SplitedObject showld contain at least 2 point to compute the area and PCA
        if ( SplitedObject.size() == 2 &&
                ( SplitedObject[0].Points.rows() > min_points && SplitedObject[1].Points.rows() > min_points ) )
        {

            SplitedObject[0].doPCA ( cue.front().T );
            SplitedObject[0] = ComputeBoundingBox ( SplitedObject[0] );

            SplitedObject[1].doPCA ( cue.front().T );
            SplitedObject[1] = ComputeBoundingBox ( SplitedObject[1] );

            // Volume condition. 
            // TODO: This condition must be updated. See results to undertand better.

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
    
    std::list< Box > sorted_boxes;
    sorted_boxes = box_sort(  results );
    
    Eigen::Matrix<double, 4, 4> T_adams;
    T_adams= info_adams(sorted_boxes.front());
    std::cout<<" T_adams "<<T_adams<<std::endl;
	
  for (std::list<Box>::iterator it=sorted_boxes.begin() ; it != sorted_boxes.end(); ++it)
 	{
 		Box actual = *it;
		printBox(actual);
	}

    return 0;
}

void printBox ( Box Box_in )
{

    std::cout << Box_in.T << std::endl;
    std::cout << Box_in.Isobox.block ( 0,0,1,3 ) << " " << Box_in.Isobox.block ( 1,0,1,3 ) << std::endl;

    return;
}
