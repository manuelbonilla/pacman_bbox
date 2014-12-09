#ifndef __PACMAN_BB_HPP_
#define __PACMAN_BB_HPP_

#include <eigen3/Eigen/Dense>

namespace pacman
{

class Box
{
public:
    //Object3d Points;
    Eigen::Matrix<double, 4, 4> T;
    Eigen::MatrixXd Points;
    Eigen::Matrix<double, 2,3> Isobox;
    double Isobox_volume;

    //CObject();
    Box ( int num_points );
    void SetPoints ( const Eigen::MatrixXd& EigenPoints );
    void SetPoint ( int i, double x, double y, double z );
    void SetT ( Eigen::Matrix<double , 4, 4>& Tnew );
    void doPCA ( const Eigen::Matrix<double, 4, 4>& Told );

    //~CObject();

};


}

#endif
