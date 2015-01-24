clear all
close all
clc

show_plot     = 1;
[R, adams_point] = bounding_box_plots('../input_files/cup.shl', '../build/res_24_1_15.txt');


cos_theta =[];
theta = [];
cos_psi = [];
psi =[] ;
cos_phi = [];
phi=[];


for i = 1:size(adams_point,1)
    
   val_phi1= R(3,1)/R(3,2);
   val_phi2=R(1,3)/R(2,3);  
   phi = - atan2(cos(val_phi1),sin(val_phi1));
   theta = acos(R(3,3)); 
   psi= atan2(cos(val_phi2),sin(val_phi2));
    
end


%ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);

hold on



%
rot_z1 = psi ;
rot_x2 = theta ;
rot_z3 = phi ;
%


selected_points_temp = [] ;
selected_index_temp= [] ;
To_Adams = [] ;
To_Adams_temp = [adams_point , rot_z1, rot_x2, rot_z3] ;

To_Adams = To_Adams_temp;

R_reconstructed = zeros(3,3,size(To_Adams,1));

for i=1:size(To_Adams,1)
    R_reconstructed(:,:,i) = ROTZ( To_Adams(i,4))*ROTX(To_Adams(i,5))*ROTZ(To_Adams(i,6));
end
%
if show_plot == 1
    hold on
    %
    for i=1:size(To_Adams,1)
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,1,i),R_reconstructed(2,1,i),R_reconstructed(3,1,i) ,.1,'r')
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,2,i),R_reconstructed(2,2,i),R_reconstructed(3,2,i) ,.1,'g')
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,3,i),R_reconstructed(2,3,i),R_reconstructed(3,3,i) ,.1,'b')
    end
end
%
CMDGenerator(To_Adams);
ACFGenerator(To_Adams);
%
save('sim_info')

