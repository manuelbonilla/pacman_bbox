clear all
close all
clc

show_plot     = 1;
[R, adams_point] = bounding_box_plots('../input_files/cup.shl', '../build/res_20150119.txt',5);

%% eulero angles
cos_theta =[];
theta = [];
cos_psi = [];
psi =[] ;
cos_phi = [];
phi=[];

adams_point_old = adams_point;

for i=1:size(R,3)
        adams_point_inv(i,:)=(-R(1:3,1:3,i).'*adams_point(i,:).').';
end


for i = 1:size(adams_point,1)
    
   val_phi1 = R(3,1,i)/R(3,2,i);
   val_phi2 = R(1,3,i)/R(2,3,i);  
   phi = [phi; atan(val_phi1)];
   theta = [theta; acos(R(3,3,i))]; 
   psi= [psi; atan(-val_phi2)];
 
end


rot_z1 = psi ;
rot_x2 = theta ;
rot_z3 = phi ;

To_Adams = [adams_point_inv , -rot_z3, -rot_x2, -rot_z1] ;

hold on

%% transformation matrix 313 ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);

R_reconstructed = zeros(3,3,size(To_Adams,1));

for i=1:size(To_Adams,1)
    R_reconstructed(:,:,i) = ROTZ(To_Adams(i,4))*ROTX(To_Adams(i,5))*ROTZ(To_Adams(i,6));
end

if show_plot == 1
     hold on
     
     for i=1:size(To_Adams,1)

        T = [ R_reconstructed(1:3,1:3,i) [To_Adams(i,1); To_Adams(i,2); To_Adams(i,3)]; 0 0 0 1];
        T=inv(T);
        plotCSYS( T , .1);
        
     end
end

%% file to adams
To_Adams(:,1:3) = To_Adams(:,1:3)*1000; % adams unit of measure mm

CMDGenerator(To_Adams);
ACFGenerator(To_Adams);

save('sim_info')
