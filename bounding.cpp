// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>

typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point_2;
typedef K::Point_3                 Point_3;


int main()
{
  // axis-aligned bounding box of 2D points
  std::vector<Point_2> points_2_proj_xy;
  std::vector<Point_2> points_2_proj_xz;
  std::vector<Point_2> points_2_proj_yz;
  std::vector<Point_3> points_3;
  std::vector<Point_2> points_up_xy;
  std::vector<Point_2> points_dw_xy;
  //std::vector<Point_2> points_dw_plot;
  std::vector<Point_2> points_up_xz;
  std::vector<Point_2> points_dw_xz;
  std::vector<Point_2> points_up_yz;
  std::vector<Point_2> points_dw_yz;
  Point_2 points_tieni_xy; 
  Point_2 points_tieni_xz;
  Point_2 points_tieni_yz;

  int num_points;
  double area_up_xy, area_dw_xy, area_tot;
  double area_up_xz, area_dw_xz, area_tot_xz;
  double area_up_yz, area_dw_yz, area_tot_yz;

  std::cin >> num_points;
  float x, y, z;

  //sstd::cout << "****************" << std::endl; 
  for (int i = 0; i < num_points; ++i)
  {
    std::cin >> x;
    std::cin >> y;
    std::cin >> z;
   // std::cout << "Point " << i << ": " << x << ", " << y << " " << z << std::endl; 

    points_3.push_back(Point_3(x,y,z));

    points_2_proj_xy.push_back(Point_2(x,y));
    // std::cout << points_2_proj_xy[i] << std::endl; 
    points_2_proj_xz.push_back(Point_2(x,z));
    points_2_proj_yz.push_back(Point_2(y,z));

  }

//  std::cout << "****************" << std::endl; 

//  std::cout << "Num of Points = " << points_3.size() << std::endl;


  K::Iso_rectangle_2 ctot = CGAL::bounding_box(points_2_proj_xy.begin(), points_2_proj_xy.end());
  area_tot_xy = ctot.area();
  double area_new_xy = area_tot_xy;

  K::Iso_cuboid_3 c3 = CGAL::bounding_box(points_3.begin(), points_3.end());
  //std::cout << c3 << std::endl;

  //piano xy 

  for (int k = 0; k < points_2_proj_xy.size(); ++k)

  {    

    //std::cout << k << std::endl;
    points_up_xy.clear();
    points_dx.clear();

    for (int t = 0; t < points_2_proj_xy.size(); ++t)
    {
        if (k==t)
          continue;

      if (points_2_proj_xy[t].y() < points_2_proj_xy[k].y())
        points_sx.push_back(Point_2(points_2_proj_xy[t].x(), points_2_proj_xy[t].y()));

      else 
        points_dx.push_back(Point_2(points_2_proj_xy[t].x() ,points_2_proj_xy[t].y()));

    }

    //std::cout << points_sx.size() << std::endl;
    //std::cout << points_dx.size() << std::endl;
    if (points_sx.size()==0 || points_dx.size()==0)
      continue;

    K::Iso_rectangle_2 c2 = CGAL::bounding_box(points_sx.begin(), points_sx.end());
    K::Iso_rectangle_2 c1 = CGAL::bounding_box(points_dx.begin(), points_dx.end());
   // std::cout << c2 << std::endl;
    //std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_sx= c2.area();
    area_dx= c1.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_sx + area_dx < area_new){
      points_dx_plot.clear();
      points_tieni_xy = points_2_proj_xy[k];
      area_new = area_sx + area_dx;
      points_dx_plot = points_dx;

    }
      
  }

  //std::cout << points_tieni_xy << std::endl;
  //std::cout << "Total area = " << area_tot << "\t New Area = " << area_new << std::endl;
  //std::cout << "///////////////" << std::endl;

  //for (int i=0; i < points_dx_plot.size(); i++)
  //  std::cout << points_dx_plot[i] << std::endl;

/*
    // piano xz
    for (int k = 0; k < points_2_proj_xz.size(); ++k)
    
{      for (int t = 0; t < points_2_proj_xy.size(); ++t)
      {
        if (points_2_proj_xy[t].z() < points_2_proj_xy[k].z())

            points_sx_xz.push_back(Point_2(points_2_proj_xz[t].x(), points_2_proj_xz[t].z()));
         
          else points_dx_xz.push_back(Point_2(points_2_proj_xz[t].x() ,points_2_proj_xz[t].z()));

      }

    K::Iso_rectangle_2 c2_xz = CGAL::bounding_box(points_sx.begin(), points_sx.end());
    K::Iso_rectangle_2 c1_xz = CGAL::bounding_box(points_dx.begin(), points_dx.end());
    std::cout << c2_xz << std::endl;
    std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_sx= c2.area();
    area_dx= c2.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_sx + area_dx < area_tot)

    points_tieni=points_2_proj_xy[k];
         

    }
    //piano yz

    for (int k = 0; k < points_2_proj_xy.size(); ++k)
    
{      for (int t = 0; t < points_2_proj_xy.size(); ++t)
      {
        if (points_2_proj_xy[t].y() < points_2_proj_xy[k].y())

            points_sx.push_back(Point_2(points_2_proj_xy[t].x(), points_2_proj_xy[t].y()));
         
          else points_dx.push_back(Point_2(points_2_proj_xy[t].x() ,points_2_proj_xy[t].y()));

      }

    K::Iso_rectangle_2 c2 = CGAL::bounding_box(points_sx.begin(), points_sx.end());
    K::Iso_rectangle_2 c1 = CGAL::bounding_box(points_dx.begin(), points_dx.end());
    std::cout << c2 << std::endl;
    std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_sx= c2.area();
    area_dx= c2.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_sx + area_dx < area_tot)

    points_tieni=points_2_proj_xy[k];
         

    }*/


 // std::cout << points_3[0].x() << std::endl;
  return 0;
}
