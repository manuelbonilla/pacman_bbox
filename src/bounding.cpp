// Example program for the bounding_box() function for 2D points and 3D points.
#include <CGAL/Simple_cartesian.h>
#include <CGAL/bounding_box.h>
#include <vector>
#include <iostream>
#include <CGAL/array.h>

typedef double                     FT;
typedef CGAL::Simple_cartesian<FT> K;
typedef K::Point_2                 Point2d;
typedef K::Point_3                 Point3d;
typedef std::vector<Point3d> Object3d;
typedef std::vector<Point2d> Object2d;

std::vector<Object3d> FindBestSplit ( Object3d Object );
Object2d  Project2plane ( Object3d Object, int plane );


int main()
{
  
  int num_points;
  float x, y, z;
  std::cin >> num_points;

  Object3d Object;
  
  // Load object
  for (unsigned int i = 0; i < num_points; ++i)
  {
    std::cin >> x;
    std::cin >> y;
    std::cin >> z;
    Object.push_back(Point3d(x,y,z));
  
  }

  std::vector<Object3d> SplitedObject;
  
  SplitedObject = FindBestSplit( Object  );
  
  return 0;
}


std::vector<Object3d> FindBestSplit ( Object3d Object )
{
    Object2d up, down, left, right;
    double area_up, area_down, area_left, area_right, area_min_y, area_min_x, area_min;
    Point2d cutting_point;
    
    
  Object2d face;

  
  for (unsigned int i = 0; i < 3; i++)
  {
      
   switch (i)
    {
      case 0:
        face = Project2plane ( Object, 0); //xy
        break;
      case 1:
        face = Project2plane ( Object, 1);
        break;
      case 2:
        face = Project2plane ( Object, 2);
        break;
    }
    

  K::Iso_rectangle_2 face_bb = CGAL::bounding_box( face.begin(), face.end() );
  double area_total = face_bb.area();
  
  area_min = area_total;
  int cutting_direction = 0;
  
  // Find the best split using horizontal direction
  
  for (unsigned int k = 0; k < face.size(); ++k)
  {    
    
    up.clear();
    down.clear();
    
    for (int t = 0; t < face.size(); ++t)
    {
      if (k==t)
        continue;
      
      if (face[t].y() > face[k].y())
        up.push_back(Point2d(face[t].x(), face[t].y()));
      
      else 
        down.push_back(Point2d(face[t].x() ,face[t].y()));
    }
    
    if (up.size()==0 || down.size()==0)
      continue;
    
    K::Iso_rectangle_2 up_bb = CGAL::bounding_box(up.begin(), up.end());
    K::Iso_rectangle_2 down_bb = CGAL::bounding_box(down.begin(), down.end());
    area_up= up_bb.area();
    area_down= down_bb.area();
    
    if (area_up + area_down < area_min)
    {
      area_min = area_up + area_down;
      cutting_point = face[k];
      cutting_direction = 0;
    }
    
  }

  
  
  // Find the best split using vertical direction
  
  for (unsigned int k = 0; k < face.size(); ++k)
  {    
    
    right.clear();
    left.clear();
    
    for (int t = 0; t < face.size(); ++t)
    {
      if (k==t)
        continue;
      
      if (face[t].x() > face[k].x())
        right.push_back(Point2d(face[t].x(), face[t].y()));
      
      else 
        left.push_back(Point2d(face[t].x() ,face[t].y()));
      
    }
    
    if (right.size()==0 || left.size()==0)
      continue;
    
    K::Iso_rectangle_2 right_bb = CGAL::bounding_box(right.begin(), right.end());
    K::Iso_rectangle_2 left_bb = CGAL::bounding_box(left.begin(), left.end());
    area_right= right_bb.area();
    area_left= left_bb.area();
    
    if (area_right + area_left < area_min)
    {
      area_min = area_right + area_left;   
      cutting_point = face[k];
      cutting_direction = 1;
    }
    
  }
 
//   std::cout << "Face " << i << std::endl;
  std::cout << cutting_point << " "; 
  std::cout << cutting_direction << std::endl;
  
  }
  
  std::vector<Object3d> test;
  return test;
  
}


// projections are defined as follows
// 0 = xy 
// 1 = xz
// 2 = yz

Object2d  Project2plane ( Object3d Object, int plane )
{
  
  Object2d projection; 
  
  for (unsigned int i = 0; i < Object.size(); i++)
  {
    switch (plane)
    {
      case 0:
        projection.push_back(Point2d(Object[i].x(), Object[i].y()));
        break;
      case 1:
        projection.push_back(Point2d(Object[i].x(), Object[i].z()));
        break;
      case 2:
        projection.push_back(Point2d(Object[i].y(), Object[i].z()));
        break;
      default:
        std::cout << "Error" << std::endl;
    }
    
  }
  
 
  return projection;
  
}