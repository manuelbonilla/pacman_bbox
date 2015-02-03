clear all
close all
clc

show_plot     = 1;
[R, adams_point] = bounding_box_plots('../input_files/cup.shl', '../build/res_20150119.txt');

%% eulero angles
cos_theta =[];
theta = [];
cos_psi = [];
psi =[] ;
cos_phi = [];
phi=[];

adams_point_old = adams_point;

T_grasp_ref=[eye(3) [0; -40*0/1000;0]; 0 0 0 1];
k=1;
for i=1:size(R,3)
 
        To_Adams_palm(:,:,i)=[R(:,:,i) adams_point(i,:).';  0 0 0 1]*T_grasp_ref; 
        adams_point(k,:)=To_Adams_palm(1:3,4,k).';
        k=k+1;
  
end

 

for i = 1:size(adams_point,1)
    
   val_phi1 = To_Adams_palm(3,1)/To_Adams_palm(3,2);
   val_phi2 = To_Adams_palm(1,3)/To_Adams_palm(2,3);  
   phi = [phi; atan(val_phi1)];
   theta = [theta; acos(To_Adams_palm(3,3))]; 
   psi= [psi; atan(-val_phi2)];
    
end


rot_z1 = psi ;
rot_x2 = theta ;
rot_z3 = phi ;


To_Adams = [adams_point , rot_z1, rot_x2, rot_z3] ;

hold on

%% transformation matrix 313 ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);

R_reconstructed = zeros(3,3,size(To_Adams,1));

% for i=1:size(To_Adams,1)
%         R_reconstructed(:,:,i) = ROTZ(psi(i))*ROTX(theta(i))*ROTZ(phi(i));
% end

for i=1:size(To_Adams,1)
    R_reconstructed(:,:,i) = ROTZ(To_Adams(i,4))*ROTX(To_Adams(i,5))*ROTZ(To_Adams(i,6))
end


%% 
if show_plot == 1
     hold on
     
     for i=1:size(To_Adams,1)

        T = [ R_reconstructed(1:3,1:3,i) [To_Adams(i,1); To_Adams(i,2); To_Adams(i,3)]; 0 0 0 1];
        plotCSYS( T , .1);
        
     end
end

%% file to adams
To_Adams(:,1:3) = To_Adams(:,1:3)*1000; % adams unit of measure mm

CMDGenerator(To_Adams);
ACFGenerator(To_Adams);

save('sim_info')

