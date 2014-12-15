#ifndef __PACMAN_BB_HPP_
#define __PACMAN_BB_HPP_

#include <eigen3/Eigen/Dense>



namespace pacman
{

    /** class: Box
    *   this class is used to create a structure for bounding box
    */

    
    class Box
    {
    public:
        //Object3d Points;
        Eigen::Matrix<double, 4, 4> T;
        Eigen::MatrixXd Points;
        Eigen::Matrix<double, 2,3> Isobox;
        double Isobox_volume;
        Eigen::Matrix<double, 4, 1> centroid;

        //CObject();
        Box ( int num_points );
        void SetPoints ( const Eigen::MatrixXd& EigenPoints );
        void SetPoint ( int i, double x, double y, double z );
         /**Function: SetPoint
            * Input: constant, variable
            * Output: Point
            * Description: initializes the points with the mesh values             
            */
        void SetT ( Eigen::Matrix<double , 4, 4>& Tnew );
         /**  Function: SetPoint
            * Input: trasformation
            * Output: new trasformation
            * Description: calculates the new trasformation from the earlier        
            */

        void doPCA ( const Eigen::Matrix<double, 4, 4>& Told );
         /** Function: doPCA
            * Inputs: Matrix, tranformation
            * Output: Matrix, new trasformation
            * Description: Finds the PCA axis. The steps to perform PCA for the purpose of visualisation are
            *        1)Translate the data so that the centre is at the origin
            *        2)Calculate the covariance matrix
            *        3)Find the principal components "using Singular Value Decomposition (SVD)"
            *        4)Reduce the data using the selected principal components
            *SVD decomposition consists in decomposing any n-by-p matrix A as a product A=USV where U is a n-by-n unitary,
            * V is a p-by-p unitary, and S is a n-by-p real positive matrix which is zero outside of its main diagonal; 
            *the diagonal entries of S are known as the singular values of A and the columns of U and V are known as the 
            *left and right singular vectors of A respectively.
            */
        //~CObject();

    };


}

#endif
