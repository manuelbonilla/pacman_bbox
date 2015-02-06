clear all
close all
clc

show_plot     = 1;
[R, adams_point] = bounding_box_plots('../input_files/cup.shl', '../build/res_20150119.txt',3);

%% eulero angles

vtheta = [];
vpsi =[] ;
vphi=[];

adams_point_old = adams_point;

for i = 1:size(adams_point,1)
 %% dol solution    
%    val_phi1 = R(3,1,i)/R(3,2,i);
%    val_phi2 = R(1,3,i)/R(2,3,i);  
%    phi = [phi; atan(val_phi1)];
%    theta = [theta; acos(R(3,3,i))]; 
%    psi= [psi; atan(-val_phi2)];

    
%    val_phi1 = R(3,1,i)/R(3,2,i);
%    val_phi2 = R(1,3,i)/R(2,3,i);  
   
   theta =  acos(R(3,3,i));
   
   cospsi = -R(2,3,i)/sin(theta);
   sinpsi = R(1,3,i)/sin(theta);
   psi = atan( sinpsi/cospsi);
   
   cosphi = R(3,2,i)/sin(theta);
   sinphi = R(3,1,i)/sin(theta);
   phi= atan(sinphi/cosphi);
   
   vtheta = [vtheta;theta];
   vpsi = [vpsi; psi];
   vphi = [vphi; phi];
   
   R_reconstructed(:,:,i) = ROTZ(-phi)*ROTX(-theta)*ROTZ(-psi);

   adams_point_inv(i,:)=(-R_reconstructed(:,:,i)*adams_point(i,:).').';
 
   end



rot_z1 = vpsi ;
rot_x2 = vtheta ;
rot_z3 = vphi ;

To_Adams = [adams_point_inv , -rot_z3, -rot_x2, -rot_z1] ;

hold on

%% transformation matrix 313 ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);


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
