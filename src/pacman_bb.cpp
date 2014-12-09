#include <pacman_bb.hpp>

namespace pacman{
	
	Box::Box(int num_points){
		
		Points = Eigen::MatrixXd::Zero(num_points, 3);
		T = Eigen::Matrix<double, 4, 4>::Identity();
		
	}
	
	void Box::SetPoints(const Eigen::MatrixXd& EigenPoints)
	//const Eigen::MatrixXd& object_eigen
	{

		Points = EigenPoints;
		T = Eigen::Matrix<double, 4, 4>::Identity();
		
	}
	
	void Box::SetT(Eigen::Matrix<double , 4, 4>& Tnew){
		Eigen::Matrix<double, 4, 4> Tprev = T;
		T = T*Tnew;
	}
	
	void Box::SetPoint(int i, double x, double y, double z){
		
		Points(i,0) =  x;
		Points(i,1) =  y;
		Points(i,2) =  z;
		
	}
	

	void Box::doPCA(const Eigen::Matrix<double, 4, 4>& Told)
	{
			Eigen::MatrixXd object_pca_eigen ( Points.rows(),3);
			Eigen::JacobiSVD<Eigen::MatrixXd> SVD_eigen;       
					
			Eigen::MatrixXd data_m(Points.rows(),3);
			Eigen::MatrixXd mean_data;
			
			mean_data = Points.colwise().mean();
			
			for (int i = 0; i < Points.rows(); i++)
			{
				data_m.block<1,3>(i,0) = Points.block<1,3>(i,0) - mean_data;
			}
			
			
			Eigen::MatrixXd tempM2 = (data_m.transpose()*data_m)/(double )data_m.rows();
			
			SVD_eigen.compute ( tempM2, Eigen::ComputeFullU | Eigen::ComputeFullV );

			Eigen::MatrixXd U = SVD_eigen.matrixU();

			object_pca_eigen= data_m*U;
			
			SetPoints( object_pca_eigen );
			
			T.block<3,3>(0,0) = U;
			T(0,3) = mean_data(0,0);
			T(1,3) = mean_data(0,1);
			T(2,3) = mean_data(0,2);    
			
			T = Told*T;


	}
	
	
}