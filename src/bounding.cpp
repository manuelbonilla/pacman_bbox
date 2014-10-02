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
  
  std::vector<Point_2> points_2_proj_xy;
  std::vector<Point_2> points_2_proj_xz;
  std::vector<Point_2> points_2_proj_yz;
  std::vector<Point_3> points_3;
  std::vector<Point_3> points_tot_up_xy;
  std::vector<Point_3> points_tot_dw_xy;
  std::vector<Point_3> points_tot_up_xz;
  std::vector<Point_3> points_tot_dw_xz;
  std::vector<Point_3> points_tot_up_yz;
  std::vector<Point_3> points_tot_dw_yz;
  std::vector<Point_3> points_piani_bb;
  std::vector<Point_2> points_up_xy;
  std::vector<Point_2> points_dw_xy;
  std::vector<Point_2> points_dw_xy_plot;
  std::vector<Point_2> points_up_xy_plot;
  std::vector<Point_2> points_dw_xz_plot;
  std::vector<Point_2> points_up_xz_plot;
  std::vector<Point_2> points_dw_yz_plot;
  std::vector<Point_2> points_up_yz_plot;
  std::vector<Point_2> points_up_xz;
  std::vector<Point_2> points_dw_xz;
  std::vector<Point_2> points_up_yz;
  std::vector<Point_2> points_dw_yz;
  Point_2 points_prova;
  /*Point_2 points_tieni_xy; 
  Point_2 points_tieni_xz;
  Point_2 points_tieni_yz; */

  int num_points;
  double area_up_xy, area_dw_xy, area_tot_xy;
  double area_up_xz, area_dw_xz, area_tot_xz;
  double area_up_yz, area_dw_yz, area_tot_yz;


  std::cin >> num_points;
  float x, y, z;
  float p_dw_xy_x, p_dw_xy_y;
  float p_up_xy_x, p_up_xy_y;
  float p_dw_xz_x, p_dw_xz_z;
  float p_up_xz_x, p_up_xz_z;
  float p_dw_yz_y, p_dw_yz_z;
  float p_up_yz_y, p_up_yz_z;
 

  //prendi valori dalla mesh; 
  for (int i = 0; i < num_points; ++i)
  {
    std::cin >> x;
    std::cin >> y;
    std::cin >> z;
    //std::cout << "Point " << i << ": " << x << ", " << y << " " << z << std::endl; 

    points_3.push_back(Point_3(x,y,z));
    points_2_proj_xy.push_back(Point_2(x,y));
    points_2_proj_xz.push_back(Point_2(x,z));
    points_2_proj_yz.push_back(Point_2(y,z));
  
  }

//  std::cout << "****************" << std::endl; 

//  std::cout << "Num of Points = " << points_3.size() << std::endl;
 
  
  K::Iso_rectangle_2 ctot_xy = CGAL::bounding_box(points_2_proj_xy.begin(), points_2_proj_xy.end());
  area_tot_xy = ctot_xy.area();

  K::Iso_rectangle_2 ctot_xz = CGAL::bounding_box(points_2_proj_xz.begin(), points_2_proj_xz.end());
  area_tot_xz = ctot_xz.area();

  K::Iso_rectangle_2 ctot_yz = CGAL::bounding_box(points_2_proj_yz.begin(), points_2_proj_yz.end());
  area_tot_yz = ctot_yz.area();
 
  std::cout << "//////BB mesh/////////" << std::endl;
  K::Iso_cuboid_3 c3 = CGAL::bounding_box(points_3.begin(), points_3.end());
  std::cout << c3 << std::endl;

  double area_new_xy = area_tot_xy;
  double area_new_xz = area_tot_xz;
  double area_new_yz = area_tot_yz;

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

    if (points_up_xy.size()==0 || points_dw_xy.size()==0)
      continue;

    //std::cout << "//////BB piano xy/////////" << std::endl;
    K::Iso_rectangle_2 c2_xy = CGAL::bounding_box(points_up_xy.begin(), points_up_xy.end());
    K::Iso_rectangle_2 c1_xy = CGAL::bounding_box(points_dw_xy.begin(), points_dw_xy.end());
    //std::cout << c2_xy << std::endl;
    //std::cout << c1_xy << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_xy= c2_xy.area();
    area_dw_xy= c1_xy.area();
    //std::cout << area_up_xy << std::endl;
    //std::cout << area_dw_xy << std::endl;
    if (area_up_xy + area_dw_xy < area_new_xy){

      points_up_xy_plot.clear();
      points_dw_xy_plot.clear();
      //points_tieni_xy = points_2_proj_xy[k];    //punto dove taglia
     area_new_xy = area_up_xy + area_dw_xy;
     points_dw_xy_plot = points_dw_xy;        //punto per fare bb del piano
     points_up_xy_plot = points_up_xy;
     //std::cout << points_2_proj_xy[k]  << std::endl;

    }
      
  }

  //std::cout << "Punti xy"<<points_tieni_xy  << std::endl;
  //std::cout << "///////////////" << std::endl;


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

    //std::cout << points_up_xz.size() << std::endl;
    //std::cout << points_dw_xz.size() << std::endl;
    if (points_up_xz.size()==0 || points_dw_xz.size()==0)
      continue;

    //std::cout << "//////BB piano xz/////////" << std::endl;
    K::Iso_rectangle_2 c2_xz = CGAL::bounding_box(points_up_xz.begin(), points_up_xz.end());
    K::Iso_rectangle_2 c1_xz = CGAL::bounding_box(points_dw_xz.begin(), points_dw_xz.end());
    //std::cout << c2_xz << std::endl;
    //std::cout << c1_xz << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_xz= c2_xz.area();
    area_dw_xz= c1_xz.area();
    //std::cout << area_up_xz << std::endl;
    //std::cout << area_dw_xz << std::endl;
    if (area_up_xz + area_dw_xz < area_new_xz){

      points_dw_xz_plot.clear();
      points_up_xz_plot.clear();
      //points_tieni_xz = points_2_proj_xz[k];
      area_new_xz = area_up_xz + area_dw_xz;
      points_dw_xz_plot = points_dw_xz;
      points_up_xz_plot = points_up_xz;

    }
      
  }

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

    //std::cout << points_up_yz.size() << std::endl;
    //std::cout << points_dw._yzsize() << std::endl;
    if (points_up_yz.size()==0 || points_dw_yz.size()==0)
      continue;

    //std::cout << "//////BB piano yz/////////" << std::endl;
    K::Iso_rectangle_2 c2_yz = CGAL::bounding_box(points_up_yz.begin(), points_up_yz.end());
    K::Iso_rectangle_2 c1_yz = CGAL::bounding_box(points_dw_yz.begin(), points_dw_yz.end());
    //std::cout << c2_yz << std::endl;
    //std::cout << c1_yz << std::endl;
    //std::cout << "Test area" << std::endl;
    area_up_yz= c2_yz.area();
    area_dw_yz= c1_yz.area();
    //std::cout << area_up_yz << std::endl;
    //std::cout << area_dw_yz << std::endl;
    if (area_up_yz + area_dw_yz < area_new_yz)
    {
      points_dw_yz_plot.clear();
      points_up_yz_plot.clear();
      //points_tieni_yz = points_2_proj_yz[k];
      area_new_yz = area_up_yz + area_dw_yz;
      points_dw_yz_plot = points_dw_yz;    //per bb
      points_up_yz_plot = points_up_yz;   
    }
    }
  
  /*std::cout << "//test punti///" << std::endl;     //cerco i punti per creare bb 3d da bb 2d delle proj
  
  for (int i=0; i < points_dw_xy_plot.size(); i++)
  { 
    p_dw_xy_x= points_dw_xy_plot[i].x();
    p_dw_xy_y= points_dw_xy_plot[i].y();
    //std::cout << "points_prova \n" << p_dw_xy_x <<"\t" << p_dw_xy_y << std::endl;
  }

  for (int i=0; i < points_dw_xy_plot.size(); i++)
  { 
    p_up_xy_x= points_dw_xy_plot[i].x();
    p_up_xy_y= points_dw_xy_plot[i].y();
  // std::cout << "points_prova_up\n" <<p_up_xy_x <<"\t" << p_up_xy_y << std::endl;

  }

  for (int i=0; i < points_dw_xz_plot.size(); i++)
  { 
    p_dw_xz_x= points_dw_xy_plot[i].x();
    p_dw_xz_z= points_dw_xy_plot[i].y();
    //std::cout << "points_prova \n" << p_dw_xz_x <<"\t" << p_dw_xz_z << std::endl;
  }

  for (int i=0; i < points_dw_xz_plot.size(); i++)
  { 
    p_up_xz_x= points_dw_xy_plot[i].x();
    p_up_xz_z= points_dw_xy_plot[i].y();
  // std::cout << "points_prova_up\n" <<p_up_xz_x <<"\t" << p_up_xz_z << std::endl;

  } 

  for (int i=0; i < points_dw_yz_plot.size(); i++)
  { 
    p_dw_yz_y= points_dw_yz_plot[i].x();
    p_dw_yz_z= points_dw_yz_plot[i].y();
    //std::cout << "points_prova \n" << p_dw_yz_y <<"\t" << p_dw_xz_z << std::endl;
  } 

  for (int i=0; i < points_dw_yz_plot.size(); i++)
  { 
    p_up_yz_y= points_dw_yz_plot[i].x();
    p_up_yz_z= points_dw_yz_plot[i].y();
  // std::cout << "points_prova_up\n" <<p_up_yz_y <<"\t" << p_up_yz_z << std::endl;

  }

  points_piani_bb.push_back(Point_3(p_dw_xy_x,p_dw_yz_y,p_up_xz_z)); //creo vettore per bb_3d
  //std::cout << "//punti piano_bb ///" << points_piani_bb << std::endl;
  std::cout << "//calcolo bounding_box unione piani 3D: ///" << std::endl;
  K::Iso_cuboid_3 bb_3d = CGAL::bounding_box(points_piani_bb.begin(), points_piani_bb.end());
  std::cout << " bb_3d prova \t "<< bb_3d << std::endl;*/
   
  std::cout << "//calcolo bounding_box dei piani: ///" << std::endl;
  K::Iso_rectangle_2 c2_dw_xy = CGAL::bounding_box(points_dw_xy_plot.begin(), points_dw_xy_plot.end());
  K::Iso_rectangle_2 c2_up_xy = CGAL::bounding_box(points_up_xy_plot.begin(), points_up_xy_plot.end());
   
  std::cout << "BB_ piano_ xy \n"<< "up \n" << c2_up_xy <<" \n down \n "<< c2_dw_xy << std::endl;

  K::Iso_rectangle_2 c2_dw_xz = CGAL::bounding_box(points_dw_xz_plot.begin(), points_dw_xz_plot.end());
  K::Iso_rectangle_2 c2_up_xz = CGAL::bounding_box(points_up_xz_plot.begin(), points_up_xz_plot.end());

  std::cout << "BB_ piano_ xz \n"<< "up \n" << c2_up_xz <<" \n down \n "<< c2_dw_xz << std::endl;

  K::Iso_rectangle_2 c2_dw_yz = CGAL::bounding_box(points_dw_yz_plot.begin(), points_dw_yz_plot.end());
  K::Iso_rectangle_2 c2_up_yz = CGAL::bounding_box(points_up_yz_plot.begin(), points_up_yz_plot.end());

  std::cout << "BB_ piano_ yz \n "<< "up \n" << c2_up_yz <<"\n down \n "<< c2_dw_yz << std::endl;

  return 0;
}
