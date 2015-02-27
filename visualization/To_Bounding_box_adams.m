clear all
close all
clc

show_plot     = 1;
[R, adams_point, object, box_lenght] = bounding_box_plots('../input_files/cup.shl', '../build/res_cup-0.9-0.00001.txt',5);

[R_reconstructed, To_Adams]= eulero_angle(R, adams_point);

hold on

%% transformation matrix 313 ROT_313=ROTZ(psi)*ROTX(theta)*ROTZ(phi);
To_Adams_new=[];
index_free_collision=[];

if show_plot == 1
     hold on
     for i=1:size(To_Adams,1)

        T = [ R_reconstructed(1:3,1:3,i) [To_Adams(i,1); To_Adams(i,2); To_Adams(i,3)]; 0 0 0 1];
        T=inv(T);
        %plotCSYS( T , .005);
%         if ( ~isCollisionHand( object, T) )
%          
%           To_Adams_new = [To_Adams_new; To_Adams(i,:)];
%           index_free_collision=[index_free_collision; i];
%         else
%             
%            index_free_collision=[index_free_collision; 0];
%            
%           if (size(index_free_collision,1)>2)
%           [To_adams_free_collision_cs]=generation_point(To_Adams_new, dim, object, R_reconstructed,  index_free_collision);  
%           end
        end
        
%      end
end

To_Adams_variations = [];

for i=1:size(To_Adams,1)
    
    To_Adams_variations = [To_Adams_variations; generate_variations( object, To_Adams( i,: ), box_lenght(i), .001,  1)];
    
end

%% file to adams
To_Adams_variations(:,1:3) = To_Adams_variations(:,1:3)*1000; % adams unit of measure mm
To_Adams_new = To_Adams_variations;
CMDGenerator(To_Adams_new);
ACFGenerator(To_Adams_new);

save('sim_info')
