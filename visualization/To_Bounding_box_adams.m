clear all
%close all
clc

show_plot     = 1;
<<<<<<< HEAD
[R, adams_point, object, box_lenght] = bounding_box_plots('../input_files/kettle.shl', '../build/res_kettle-0.9-0.00001.txt',2);
=======
[R, adams_point, object, box_lenght] = bounding_box_plots('../input_files/cup.shl', '../build/res_cup.txt',1);
>>>>>>> 4a8856eb47ad2bbb650beb1ea66321023e704858

[R_reconstructed, To_Adams]= eulero_angle(R, adams_point);

hold on

%% transformation matrix 313 ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);
To_Adams_new=[];
index_free_collision=[];

% if show_plot == 1
%      hold on
%      for i=1:size(To_Adams,1)
% 
%         T = [ R_reconstructed(1:3,1:3,i) [To_Adams(i,1); To_Adams(i,2); To_Adams(i,3)]; 0 0 0 1];
%         T=inv(T);
%      end
% end

To_Adams_variations = [];

for i=1:size(To_Adams,1)
    
    To_Adams_variations = [To_Adams_variations; generate_variations( object, To_Adams( i,: ), box_lenght(i), .001,  1, 20)];
    
end
% 
%% file to adams
To_Adams_variations(:,1:3) = To_Adams_variations(:,1:3)*1000; % adams unit of measure mm
To_Adams_new = To_Adams_variations;
CMDGenerator(To_Adams_new);
ACFGenerator(To_Adams_new);

save('sim_info_kettle2_collision')
