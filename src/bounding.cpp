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
  double area_up_xy, area_dw_xy, area_tot_xy;
  double area_up_xz, area_dw_xz, area_tot_xz;
  double area_up_yz, area_dw_yz, area_tot_yz;
  double area_new_xy = area_tot_xy;
  double area_new_xz = area_tot_xz;
  double area_new_yz = area_tot_yz;

  std::cin >> num_points;
  float x, y, z;

  //prendi valori dalla mesh; 
  for (int i = 0; i < num_points; ++i)
  {
    std::cin >> x;
    std::cin >> y;
    std::cin >> z;
   // std::cout << "Point " << i << ": " << x << ", " << y << " " << z << std::endl; 

    points_3.push_back(Point_3(x,y,z));
    points_2_proj_xy.push_back(Point_2(x,y));
    points_2_proj_xz.push_back(Point_2(x,z));
    points_2_proj_yz.push_back(Point_2(y,z));

  }

//  std::cout << "****************" << std::endl; 

//  std::cout << "Num of Points = " << points_3.size() << std::endl;

  K::Iso_rectangle_2 ctot = CGAL::bounding_box(points_2_proj_xy.begin(), points_2_proj_xy.end());
  area_tot_xy = ctot.area();
 
  K::Iso_cuboid_3 c3 = CGAL::bounding_box(points_3.begin(), points_3.end());
  //std::cout << c3 << std::endl;

  //piano xy 

  for (int k = 0; k < points_2_proj_xy.size(); ++k)

  {    

    //std::cout << k << std::endl;
    points_up_xy.clear();
    points_dw_xy.clear();

    for (int t = 0; t < points_2_proj_xy.size(); ++t)
    {
        if (k==t)
          continue;

      if (points_2_proj_xy[t].y() < points_2_proj_xy[k].y())
        points_up_xy.push_back(Point_2(points_2_proj_xy[t].x(), points_2_proj_xy[t].y()));

      else 
        points_dw_xy.push_back(Point_2(points_2_proj_xy[t].x() ,points_2_proj_xy[t].y()));

    }

    //std::cout << points_sx.size() << std::endl;
    //std::cout << points_dx.size() << std::endl;
    if (points_up_xy.size()==0 || points_dw_xy.size()==0)
      continue;

    K::Iso_rectangle_2 c2 = CGAL::bounding_box(points_up_xy.begin(), points_up_xy.end());
    K::Iso_rectangle_2 c1 = CGAL::bounding_box(points_dw_xy.begin(), points_dw_xy.end());
   // std::cout << c2 << std::endl;
    //std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_xy= c2.area();
    area_dw_xy= c1.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_up_xy + area_dw_xy < area_new_xy){
      //points_dw_xy_plot.clear();
      points_tieni_xy = points_2_proj_xy[k];
      area_new_xy = area_up_xy + area_dw_xy;
     // points_dw_xy_plot = points_dw_xy;

    }
      
  }

  //std::cout << points_tieni_xy << std::endl;
  //std::cout << "Total area = " << area_tot << "\t New Area = " << area_new << std::endl;
  //std::cout << "///////////////" << std::endl;

  //for (int i=0; i < points_dx_plot.size(); i++)
  //  std::cout << points_dx_plot[i] << std::endl;


    // piano xz
     for (int k = 0; k < points_2_proj_xz.size(); ++k)

  {    

    //std::cout << k << std::endl;
    points_up_xz.clear();
    points_dw_xz.clear();

    for (int t = 0; t < points_2_proj_xz.size(); ++t)
    {
        if (k==t)
          continue;

      if (points_2_proj_xz[t].y() < points_2_proj_xz[k].y())
        points_up_xz.push_back(Point_2(points_2_proj_xz[t].x(), points_2_proj_xz[t].y()));

      else 
        points_dw_xz.push_back(Point_2(points_2_proj_xz[t].x() ,points_2_proj_xz[t].y()));

    }

    //std::cout << points_sx.size() << std::endl;
    //std::cout << points_dx.size() << std::endl;
    if (points_up_xz.size()==0 || points_dw_xz.size()==0)
      continue;

    K::Iso_rectangle_2 c2_xz = CGAL::bounding_box(points_up_xz.begin(), points_up_xz.end());
    K::Iso_rectangle_2 c1_xz = CGAL::bounding_box(points_dw_xz.begin(), points_dw_xz.end());
   // std::cout << c2 << std::endl;
    //std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_xz= c2_xz.area();
    area_dw_xz= c1_xz.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_up_xz + area_dw_xz < area_new_xz){
      //points_dw_xy_plot.clear();
      points_tieni_xz = points_2_proj_xz[k];
      area_new_xz = area_up_xz + area_dw_xz;
     // points_dw_xy_plot = points_dw_xy;

    }
      
  }

    //}

    //piano yz

      for (int k = 0; k < points_2_proj_yz.size(); ++k)

  {    

    //std::cout << k << std::endl;
    points_up_yz.clear();
    points_dw_yz.clear();

    for (int t = 0; t < points_2_proj_yz.size(); ++t)
    {
        if (k==t)
          continue;

      if (points_2_proj_yz[t].y() < points_2_proj_yz[k].y())
        points_up_yz.push_back(Point_2(points_2_proj_yz[t].x(), points_2_proj_yz[t].y()));

      else 
        points_dw_yz.push_back(Point_2(points_2_proj_yz[t].x() ,points_2_proj_yz[t].y()));

    }

    //std::cout << points_sx.size() << std::endl;
    //std::cout << points_dx.size() << std::endl;
    if (points_up_yz.size()==0 || points_dw_yz.size()==0)
      continue;

    K::Iso_rectangle_2 c2_yz = CGAL::bounding_box(points_up_yz.begin(), points_up_yz.end());
    K::Iso_rectangle_2 c1_yz = CGAL::bounding_box(points_dw_yz.begin(), points_dw_yz.end());
   // std::cout << c2 << std::endl;
    //std::cout << c1 << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_yz= c2_yz.area();
    area_dw_yz= c1_yz.area();
    //std::cout << area_sx << std::endl;
    //std::cout << area_dx << std::endl;
    if (area_up_yz + area_dw_yz < area_new_yz){
      //points_dw_xy_plot.clear();
      points_tieni_yz = points_2_proj_yz[k];
      area_new_yz = area_up_yz + area_dw_yz;
     // points_dw_xy_plot = points_dw_xy;

    }
      
  }

 // std::cout << points_3[0].x() << std::endl;
  return 0;
}
