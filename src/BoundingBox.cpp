// Example program for the bounding_box() function for 2D points and 3D points.
#include <pacman_bb.hpp>
#include <pacman_bb_utils.hpp>
#include <iostream>

using namespace pacman;

double gain;


int main()
{
  gain = 0.9;
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
  
  //Apply a first PCA to te Object
  
  //std::cout << ObjectOriginal.Points << std::endl;
	
  ObjectOriginal.doPCA( Eigen::Matrix<double, 4, 4>::Identity() ); 
	ObjectOriginal = ComputeBoundingBox ( ObjectOriginal );

	std::list< Box > cue, results;
	std::vector< Box > SplitedObject;	
		
	cue.push_back( ObjectOriginal);
  
    while( !cue.empty() )
    { 
        	
					SplitedObject = FindBestSplit( cue.front() ); 
					SplitedObject[0].doPCA( cue.front().T );
					SplitedObject[1].doPCA( cue.front().T );
					
          std::cout << cue.front().T << std::endl;
					std::cout << cue.front().Isobox.block(0,0,1,3) << " " << cue.front().Isobox.block(1,0,1,3) << std::endl;
          std::cout << SplitedObject[0].T << std::endl;
					SplitedObject[0] = ComputeBoundingBox ( SplitedObject[0] );
					std::cout << SplitedObject[0].Isobox.block(0,0,1,3) << " " << SplitedObject[0].Isobox.block(1,0,1,3) << std::endl;
					SplitedObject[1] = ComputeBoundingBox ( SplitedObject[1] );
					std::cout << SplitedObject[1].T << std::endl;
					std::cout << SplitedObject[1].Isobox.block(0,0,1,3) << " " << SplitedObject[1].Isobox.block(1,0,1,3) << std::endl;
					
				  //std::cout << CGAL::bounding_box(box1.Points.begin(), box1.Points.end()) << std::endl;
  /*
            if (SplitedObject[0].size() > 100 && SplitedObject[1].size() > 100)
            {
                cue.push_back(SplitedObject[0]);
                cue.push_back(SplitedObject[1]);
								
//                 box1 = PCA( vec2Eigen( SplitedObject[0] ), SplitedObject[0] );
//                 box2 = PCA( vec2Eigen( SplitedObject[1] ), SplitedObject[1] );
//                 std::cout << box1.T << std::endl;
//                 std::cout << CGAL::bounding_box(box1.Points.begin(), box1.Points.end()) << std::endl;
//                 std::cout << box2.T  << std::endl;
//                 std::cout << CGAL::bounding_box(box2.Points.begin(), box2.Points.end()) << std::endl;
							
						
            }*/
            
 return 0;

    }

     
  
  return 0;
}

