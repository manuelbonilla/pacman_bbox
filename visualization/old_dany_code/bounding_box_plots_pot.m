function [R, palm_points] = bounding_box_plots_pot(filename_object, bb_results, num_scatole_input)


%% import mesh 
 [points] = import_shl(filename_object);


%% plot mesh
 figure();
 plot3(points(:,1), points(:,2), points(:,3),'*'); 
 title('Original_object'); grid on

 plotCSYS(eye(4), .12);
  xlabel('x');  ylabel('y');  zlabel('z'); 

%% import bounding box    
  res = import_bbox_results( bb_results );

 n_scatole = size(res,2)/2;
 if nargin > 2
    if (n_scatole > num_scatole_input)
         n_scatole = num_scatole_input;
    end
 end
 %n_scatole = 1*2;
 
%%  plot figure and csys
 for i=1: n_scatole*2

        if (mod(i,2) == 0 )
             plotOrientedIsobox(res{i}.X, res{i}.Y, res{i}.T);
         else
             plotCSYS(res{i}.T, .1);
             
    end
 end

%% Code to add variations
k=1;
D_back=0;%-40/1000; %+40 because for our grasp we need to have hand back

for i=1:n_scatole*2
   
    if (mod(i,2) == 1)
 
     % long axis   
     side = max( sqrt(( res{i+1}.X - res{i+1}.Y ).^2));
     
     dim=side/5;  %divide long side by 5 steps   
    
     %% Rz(?) = [cos ? ?sin? 0; sin? cos? 0; 0 0 1], 
     
    alfa=pi; 
    rotz45 = [ROTZ(-25*pi/180) [0;0;0]; [0 0 0 1]];
    res_local = res{i}.T* [eye(3) [0 ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,1)= res{i}.T* [eye(3) [0 ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,2)= res{i}.T* [eye(3) [dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,3)= res{i}.T* [eye(3) [2*dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,4)= res{i}.T* [eye(3) [-dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,5)= res{i}.T* [eye(3) [-2*dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,6)= res{i}.T* [eye(3) [3*dim ;D_back ;0];0 0 0 1]*rotz45;
    
    %rotation
    degree=10*pi/180;   %angle in rad
    
    rot_x=[1, 0, 0;
         0, cos(degree), -sin(degree);
         0, sin(degree), cos(degree)];
    
    %ROT=ROTZ(alfa)*ROTX(degree);
    
    Var(:,:,7)= res{i}.T* [ rot_x(:,:) [dim ;D_back ;0]; 0 0 0 1]*rotz45;
    Var(:,:,8)= res{i}.T* [ rot_x(:,:) [2*dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,9)= res{i}.T* [ rot_x(:,:) [-dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,10)= res{i}.T* [ rot_x(:,:) [-2*dim ;D_back ;0];0 0 0 1]*rotz45;
    Var(:,:,11)= res{i}.T* [ rot_x(:,:) [3*dim ;D_back ;0];0 0 0 1]*rotz45;
    

    R_variation{k}=Var;
    k=k+1;
    
    
    end
    
end
n_variations = size(Var,3);
%% calculate transformation matrix
 k=1;
 hold on
 for i=1: size(R_variation,2)
    R_local = R_variation{i};
    for j=1:n_variations
        R(:,:,k) = R_local(1:3,1:3,j);
        palm_points(k,:) =R_local(1:3,4,j).';
         k = k+1;
         plotCSYS(R_local(:,:,j), .01);
   end

 end





end
