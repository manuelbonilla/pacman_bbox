%
clear all
close all
clc
%
show_plot     = 1;
num_samples   = 100 ; % number of candidate points
good_samples  = 50  ; % number of needed points, to avoid singularity
num_rotations = 8 ; % attempted rotation about the z-axis of a point
%
dist = 5 ; % distanza a cui metto il palmo rispetto all'oggetto (in millimetri!)
filename = 'stl_meshes/kettle2_new.ply' ; % 'pacman_obj/stl_meshes/pot2_uniform.ply' ;
%
[points, triangles, normals, num_points, num_triangles, num_normals] =...
                    Import_PLY(filename, show_plot) ; % points dal ply è dato in millimetri
%
%points= points./1000;
random_points = ceil(rand(num_samples,1)*size(points,1)) ;%ceil(rand(num_samples,1)*size(points,1)) ;
%
selected_points  = points(random_points,:) ;
selected_normals = normals(random_points,:) ;
selected_index  = random_points ;
%
palm_points = selected_points + dist*selected_normals ;
palm_normal = -selected_normals;
if show_plot == 1
%
    hold on
    %
    plot3(selected_points(:,1), selected_points(:,2), selected_points(:,3), '*r');
    plot3(palm_points(:,1), palm_points(:,2), palm_points(:,3), '*k');
    %
    quiver3(0,0,0, 1,0,0 ,200,'r')
    quiver3(0,0,0, 0,1,0 ,200,'g')
    quiver3(0,0,0, 0,0,1 ,200,'b')
end
%
R= zeros(3,3,length(selected_normals));
for i = 1:size(selected_normals,1)
temp = null(palm_normal(i,:)) ;
R(:,:,i) = [cross(temp(:,1),palm_normal(i,:)'), temp(:,1)  , palm_normal(i,:)'] ;
end
%
cos_theta =[];
theta = [];
cos_psi = [];
psi =[] ;
cos_sigma = [];
sigma=[];
for i = 1:size(selected_normals,1)
    cos_theta_temp = R(3,3, i) ;
    theta_temp   =  acos(cos_theta_temp) ;
    if abs(sin(theta_temp)) >= .01 % tolleranza alla singolaritï¿½ di rappresentazione
        theta     =  [theta      ;   acos(cos_theta_temp) ];
        cos_psi_temp   =   -R(2,3,i) / sin(theta(i)) ;
        psi       =  [psi        ;   acos(cos_psi_temp)         ] ;
        cos_sigma_temp =  (R(3,2,i) / sin(theta(i))) ;
        sigma     =  [sigma      ;   acos(cos_sigma_temp)      ];
    else
        theta     =  [theta      ;   0      ];
        psi       =  [psi        ;   0      ] ;
        sigma     =  [sigma      ;   0      ];
    end
end
%
rot_z1 = psi ;
rot_x2 = theta ;
rot_z3 = sigma ;
%


selected_points_temp = [] ;
selected_index_temp= [] ;
To_Adams = [] ;
To_Adams_temp = [palm_points , rot_z1, rot_x2, rot_z3] ;
for i = 1 : size(To_Adams_temp,1)
    if norm(To_Adams_temp(i,4:6)) ==0
        continue
    else
    To_Adams =[To_Adams;To_Adams_temp(i,:) ] ;   
    selected_points_temp = [selected_points_temp; selected_points(i)] ; 
    selected_index_temp = [selected_index_temp; selected_index(i)] ;    
    %selected_points_temp = [selected_points_temp; points(i,:)] ;
    end
end
%
if size(To_Adams,1)<good_samples
    error('error: not enough good samples')
else
    To_Adams = To_Adams(1:good_samples,:) ;
    selected_index = selected_index(1:good_samples) ;
    selected_points = selected_points(1:good_samples,:) ;
end
%
Aux_selected_points = [];
Aux_selected_index = [];
Aux_To_Adams = [] ;
for i = 1 : good_samples
    for j = 0: (num_rotations-1)
       Aux_To_Adams        =    [  Aux_To_Adams;    To_Adams(i,:)  ] ;
       Aux_To_Adams(end,6) =    To_Adams(i,6) + j*2*pi/num_rotations ;
       Aux_selected_points =    [Aux_selected_points; selected_points(i,:) ];
       Aux_selected_index  =    [Aux_selected_index ; selected_index(i,:) ];
    end
end
%
To_Adams = Aux_To_Adams ;
selected_points = Aux_selected_points ;
selected_index  = Aux_selected_index ;
%
R_reconstructed = zeros(3,3,size(To_Adams,1));
for i=1:size(To_Adams,1)
    R_reconstructed(:,:,i) = rotz( To_Adams(i,4))*rotx(To_Adams(i,5))*rotz(To_Adams(i,6));
end
%
if show_plot == 1
    hold on
    %
    for i=1:size(To_Adams,1)
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,1,i),R_reconstructed(2,1,i),R_reconstructed(3,1,i) ,30,'r')
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,2,i),R_reconstructed(2,2,i),R_reconstructed(3,2,i) ,30,'r')
        quiver3(To_Adams(i,1), To_Adams(i,2), To_Adams(i,3), R_reconstructed(1,3,i),R_reconstructed(2,3,i),R_reconstructed(3,3,i) ,30,'b')
    end
end
%
CMDGenerator(To_Adams);
ACFGenerator(To_Adams);
%
save('sim_info')




