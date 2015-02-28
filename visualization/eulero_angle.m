function [R_reconstructed, To_Adams]= eulero_angle(R, adams_point)
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
% 
%    adams_point_inv(i,:)=(-R_reconstructed(:,:,i)*adams_point(i,:).').';
 
   end



rot_z1 = vpsi ;
rot_x2 = vtheta ;
rot_z3 = vphi ;

%To_Adams = [adams_point_inv , -rot_z3, -rot_x2, -rot_z1] ;
To_Adams = [adams_point(:,1:3) , rot_z1, rot_x2, rot_z3] ;

%hold on


end

