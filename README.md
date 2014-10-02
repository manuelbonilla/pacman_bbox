pacman_bbox
===========

This repo contains the codes to decompose a object meshes into bounding boxes.
This code is been developed in [Centro E Piaggio](http://www.centropiaggio.unipi.it/) at [University of Pisa](http://www.unipi.it/) under the project 
EU [PACMAN](http://www.pacman-project.eu/).
The code in mainly developed in c++ but we use Matlab for visualization purposes

Authors:

    -  Manuel Bonilla  - josemanuelbonilla@gmail
    -  Daniela Resasco - daniela.resasco@gmail.com

## Dependencies

    cgal

to execute just

    cmake build
    cd build
    cmake ..
    make
  
to execute the code example

    ./bounding < ../input_files/cup.shl
  
