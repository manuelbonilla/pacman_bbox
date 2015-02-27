clear all
close all
clc

show_plot     = 1;
[R, adams_point, object, dim] = bounding_box_plots('../input_files/cup.shl', '../build/res_cup-0.9-0.00001.txt',5);

%% eulero angles

vtheta = [];
vpsi =[] ;
vphi=[];

adams_point_old = adams_point;

for i = 1:size(adams_point,1)
 %% sol solution    

 psi=atan2(R(1,3,i), -R(2,3,i));
 phi=atan2(-cos(psi)*R(1,2,i)-sin(psi)*R(2,2,i), cos(psi)*R(1,1,i)+sin(psi)*R(2,1,i));
 theta=atan2(sin(psi)*R(1,3,i)-cos(psi)*R(2,3,i), R(3,3,i));
 
%***%
%    theta =  acos(R(3,3,i));
%    
%    cospsi = -R(2,3,i)/sin(theta);
%    sinpsi = R(1,3,i)/sin(theta);
%    psi = atan( sinpsi/cospsi);
%    
%    cosphi = R(3,2,i)/sin(theta);
%    sinphi = R(3,1,i)/sin(theta);
%    phi= atan(sinphi/cosphi);
   
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
To_Adams_new=[];
index=[];

if show_plot == 1
     hold on
     

     for i=1:size(To_Adams,1)

        T = [ R_reconstructed(1:3,1:3,i) [To_Adams(i,1); To_Adams(i,2); To_Adams(i,3)]; 0 0 0 1];
        T=inv(T);
        %plotCSYS( T , .005);
        if ( ~isCollision( object, T) )
          % [To_adams_free_collision_cs]=generation_point(To_Adams, dim, T, object)  
          To_Adams_new = [To_Adams_new; To_Adams(i,:)];
          index=[index; i];
        end
        
     end
end

%% file to adams
To_Adams_new(:,1:3) = To_Adams_new(:,1:3)*1000; % adams unit of measure mm

CMDGenerator(To_Adams_new);
ACFGenerator(To_Adams_new);

save('sim_info')
