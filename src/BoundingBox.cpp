#include <pacman_bb.hpp>
#include <pacman_bb_utils.hpp>
#include <iostream>

using namespace pacman;

int main()
{
  double gain = 0.9;
	double  vol_gain = 0.98;
	int max_points = 100;
  int num_points;
  float x, y, z;
  std::cin >> num_points;
	
	Box ObjectOriginal( num_points );

  // Get the Object from the Original Shl file
	
  for (unsigned int i = 0; i < num_points; ++i)
  {
		
    std::cin >> x;
    std::cin >> y;
    std::cin >> z;
    
    ObjectOriginal.SetPoint( i, x, y, z);
  
  }
  	
  ObjectOriginal.doPCA( Eigen::Matrix<double, 4, 4>::Identity() ); 
	ObjectOriginal = ComputeBoundingBox ( ObjectOriginal );

	std::list< Box > cue, results;
	std::vector< Box > SplitedObject;	
		
	cue.push_back( ObjectOriginal);
  
    while( !cue.empty() )
    { 
        	
					SplitedObject = FindBestSplit( cue.front(), gain ); 
					
					if (SplitedObject[0].Points.rows() > max_points && SplitedObject[1].Points.rows() > max_points )
					{

						SplitedObject[0].doPCA( cue.front().T );
						SplitedObject[0] = ComputeBoundingBox ( SplitedObject[0] );
						
						SplitedObject[1].doPCA( cue.front().T );
						SplitedObject[1] = ComputeBoundingBox ( SplitedObject[1] );
					
					
//             if ( (SplitedObject[0].Isobox_volume + SplitedObject[1].Isobox_volume) < vol_gain * cue.front().Isobox_volume  )
// 						{
							
                cue.push_back(SplitedObject[0]);
                cue.push_back(SplitedObject[1]);							
						
//             }
//             else
// 						{
							
// 							std::cout << cue.front().T << std::endl;
// 							std::cout << cue.front().Isobox.block(0,0,1,3) << " " << cue.front().Isobox.block(1,0,1,3) << std::endl;
							
// 						}
            
            
					}
					else
					{
						
						std::cout << cue.front().T << std::endl;
						std::cout << cue.front().Isobox.block(0,0,1,3) << " " << cue.front().Isobox.block(1,0,1,3) << std::endl;
						
					}
					
					cue.pop_front();

    }

  return 0;
}
