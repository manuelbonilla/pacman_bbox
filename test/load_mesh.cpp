#include <iostream>
//#include <stdio.h>

int main ( int argc, char const *argv[] )
{
    int num_points;
    std::cin >> num_points;
    std::cout << "Number of points " << num_points << std::endl	 ;
    float x, y, z;
    for ( int i = 0; i < num_points; ++i )
    {
        std::cin >> x;
        std::cin >> y;
        std::cin >> z;
        std::cout << "Point " << i << ": " << x << ", " << y << " " << z << std::endl;
    }

    return 0;

}
