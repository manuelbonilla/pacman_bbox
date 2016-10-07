#include <iostream>
#include <fstream>
#include <eigen3/Eigen/Dense>

#include <Eigen/Geometry>
#include <vector>


std::vector<Eigen::MatrixXd> populate_face (Eigen::Vector3d axis_dimensions, int disc = 10, double dist_hand = 0.005, Eigen::Matrix4d T_init = Eigen::Matrix4d::Identity())
{
	// std::vector<Eigen::Matrix4d> results((disc+1)*(disc+1)*6, Eigen::Matrix4d::Identity());
	/*The total size of the output vertor is disc*dic*(disc-)*6*/
	/* it is because each side of each box face is discretized by disc, then the angles are as well 
	but PI an -PI is the same so the last is not evaluated, then there are 6 faces*/


	std::vector<Eigen::MatrixXd> results;

	Eigen::Vector3d rx(1, 0, 0);
	Eigen::Vector3d ry(0, 1, 0);
	Eigen::Vector3d rz(0, 0, 1);

	Eigen::Matrix3d m, m_start;

	//  Plane YZ;
	for (double i = -1.0 * axis_dimensions(1) / 2 ; i <= axis_dimensions(1) / 2; i = i + (axis_dimensions(1) / disc) )
	{
		for (double j = -1.0 * axis_dimensions(2) / 2 ; j <= axis_dimensions(2) / 2; j = j + (axis_dimensions(2) / disc) )
		{
			Eigen::Matrix4d start = Eigen::Matrix4d::Identity(4, 4);

			start(0, 3) = axis_dimensions(0) / 2 + dist_hand;
			start(1, 3) = i;
			start(2, 3) = j;
			m_start = Eigen::AngleAxisd( -M_PI / 2, Eigen::Vector3d::UnitY());
			for (double k = -M_PI ; k < M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}

			start(0, 3) = -1.0 * (axis_dimensions(0) / 2 + dist_hand);
			m_start = Eigen::AngleAxisd( M_PI / 2, Eigen::Vector3d::UnitY());
			for (double k = -M_PI ; k < M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}
		}
	}

	// Plane XZ;

	for (double i = -1.0 * axis_dimensions(0) / 2 ; i <= axis_dimensions(0) / 2; i = i + (axis_dimensions(0) / disc) )
	{
		for (double j = -1.0 * axis_dimensions(2) / 2 ; j <= axis_dimensions(2) / 2; j = j + (axis_dimensions(2) / disc) )
		{
			Eigen::Matrix4d start = Eigen::Matrix4d::Identity(4, 4);

			start(0, 3) = i;
			start(1, 3) = axis_dimensions(1) / 2 + dist_hand;
			start(2, 3) = j;
			m_start = Eigen::AngleAxisd( M_PI / 2, Eigen::Vector3d::UnitX());
			for (double k = -M_PI ; k <= M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}

			start(1, 3) = -1.0 * (axis_dimensions(1) / 2 + dist_hand);
			m_start = Eigen::AngleAxisd( -M_PI / 2, Eigen::Vector3d::UnitX());
			for (double k = -M_PI ; k <= M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}
		}
	}

	// Plane XY

	for (double i = -1.0 * axis_dimensions(0) / 2 ; i <= axis_dimensions(0) / 2; i = i + (axis_dimensions(0) / disc) )
	{
		for (double j = -1.0 * axis_dimensions(1) / 2 ; j <= axis_dimensions(1) / 2; j = j + (axis_dimensions(1) / disc) )
		{
			Eigen::Matrix4d start = Eigen::Matrix4d::Identity(4, 4);

			start(0, 3) = i;
			start(1, 3) = j;
			start(2, 3) = axis_dimensions(2) / 2 + dist_hand;
			m_start = Eigen::AngleAxisd( M_PI, Eigen::Vector3d::UnitX());
			for (double k = -M_PI ; k <= M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}

			start(2, 3) = -1.0 * (axis_dimensions(2) / 2 + dist_hand);
			m_start = Eigen::AngleAxisd( 0, Eigen::Vector3d::UnitX());
			for (double k = -M_PI ; k <= M_PI; k = k + M_PI / disc)
			{
				m = m_start * Eigen::AngleAxisd(k, Eigen::Vector3d::UnitZ());
				start.block<3, 3>(0, 0) = m;
				results.push_back(T_init*start);
			}
		}
	}
	return results;

}

int main()
{
	Eigen::Vector3d axis_dimensions(3, 1);
	axis_dimensions << 3 , 4 , 2;

	std::vector<Eigen::MatrixXd> test;
	test = populate_face(axis_dimensions, 3);

	std::ofstream results_file;
	results_file.open("results.txt");

	for (int i = 0; i < test.size(); i++)
	{
		results_file << test[i] << std::endl;
	}
	std::cout << "Num. Trasnformations: " << test.size() << std::endl;



	return 0;
}


