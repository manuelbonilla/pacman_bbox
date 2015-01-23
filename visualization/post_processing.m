clear all
close all
clc
%
%
load('sim_info_parte2') % To_Adams ha i punti espressi in millimetri
%
controllo = load('controllo.mat','controllo');
controllo = controllo.controllo;

% controllo_old=load('controllo_OLD.mat','controllo');
% controllo_old=controllo_old.controllo;
%
t_val_req = 24 ; % salto fra due t_ consecutivi nel file *n2.req
%
%To_Adams =load('sim_info','To_Adams'); % rivedere
%To_Kuka = [] ;
%
if size(To_Adams,1) ~= length(controllo)
    error('error')
end
error_file  = [] ; %
simulations = [] ;
flag_presa  = [] ;
conf_hand_grasp = [] ;
verdi = [] ;
rossi = [] ;
verdi_index =[];
rossi_index =[] ;
%
xlab        = {} ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEMPO DELLE SIM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_sim_1=3;
step_sim_1=3000;
inc1=time_sim_1/step_sim_1;
time_sim_2=2;
step_sim_2=2000;
inc2=time_sim_2/step_sim_2;
%
init_skip = 27;% primo valore leggibile del file *n2.req
max_steps_2  = t_val_req*step_sim_2 ; %
%
%
filename = 'stl_meshes/kettle2_new.ply' ; % 'pacman_obj/stl_meshes/pot2_uniform.ply' ;
%
[points, triangles, normals, num_points, num_triangles, num_normals] =...
                    Import_PLY(filename, show_plot) ; % points espressi in millimetri
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
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
P_hand   = To_Adams(:,[1,2,3]) ; %Adesso P_hand è espresso in millimetri
ZXZ_hand = To_Adams(:,[4,5,6]) ;
R_hand   = zeros(3,3,length(controllo));
for i = 1 : length(controllo)
    R_hand(:,:,i) = rotz(  ZXZ_hand(i,1)  )...
                *rotx( ZXZ_hand(i,2) )*rotz( ZXZ_hand(i,3) );
end
%
hold on
for i = 1:length(controllo)
    %   
    if controllo(i)~=0
        %
        name = ['prova' num2str(i) 'n2.req'] ;% num2str(rho_var) 'al' num2str(ceil(abs((alpha_var*180)/pi))) 'az' num2str(ceil(abs((azimut_var*180)/pi))) 'el' num2str(ceil(abs((elevation_var*180)/pi))) 'n2.req'];
        fileID2 = fopen(name);
        %
        if (fileID2 == -1)
            error_file(i) = i ;
            continue
        end
        %
        fileSC = textscan(fileID2,'%s %s %s %s %s %s');
        dim_fileSC = size(fileSC{1},1);
        %
        if (dim_fileSC > max_steps_2 )
            tempo = [];
            for  k =   init_skip: t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) ) % 27:24:48050  %
                a = cell2mat(fileSC{1}(k));
                b = str2num(a);
                tempo= [tempo;b];
            end
            %
            vel_x=[];
            for k =  ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) ) %28:24:48050 %
                a = cell2mat(fileSC{1}(k));
                b = str2num(a);
                vel_x= [vel_x;b];
            end
            %
            vel_y=[];
            for k =  ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) )%28:24:48050 %
                a = cell2mat(fileSC{2}(k));
                b = str2num(a);
                vel_y= [vel_y;b];
            end
            %
            vel_z=[];
            for k = ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) ) %28:24:48050 % 
                a = cell2mat(fileSC{3}(k));
                b = str2num(a);
                vel_z= [vel_z;b];
            end
            %
            vel_ang_x=[];
            for k =  ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) ) % 28:24:48050 %
                a = cell2mat(fileSC{4}(k));
                b = str2num(a);
                vel_ang_x= [vel_ang_x;b];
            end
            %
            vel_ang_y=[];
            for k =  ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) ) %28:24:48050 %
                a = cell2mat(fileSC{5}(k));
                b = str2num(a);
                vel_ang_y= [vel_ang_y;b];
            end
            %
            vel_ang_z=[];
            for k =  ( init_skip+1): t_val_req:(t_val_req*(step_sim_2+1)+(init_skip-1) )% 28:24:48050 %
                a = cell2mat(fileSC{6}(k));
                b = str2num(a);
                vel_ang_z= [vel_ang_z;b];
            end
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
            modulo=[];
            lung=length(vel_x);
            for j=1:1:lung
                modulo(j)=sqrt(vel_x(j)^2+vel_y(j)^2+vel_z(j)^2);
            end
            
            flag_presa(i) = modulo(end) ;
            conf_hand_grasp(i,:) = To_Adams(i,:) ;
            if flag_presa(i) <= 50  %% valore limite di velocità per cui l'oggetto è considerato preso (in m/s)
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3), ...
                    R_hand(1,1,i),R_hand(2,1,i),R_hand(3,1,i) ,30,'g')
                hold on
                axis equal
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
                    R_hand(1,2,i),R_hand(2,2,i),R_hand(3,2,i) ,30,'g')
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
                    R_hand(1,3,i),R_hand(2,3,i),R_hand(3,3,i) ,30,'b')
                
                plot3(P_hand(i,1), P_hand(i,2), P_hand(i,3),'og','MarkerSize',10,'MarkerFaceColor','g'),
                plot3(0,0,0,'ok','MarkerSize',10,'MarkerFaceColor','k')
                verdi= [ verdi ; i ] ;
                verdi_index = [ verdi_index; selected_index(i) ];
                %
                punti_verdi= [verdi,verdi_index];
                %To_Kuka = [To_Kuka ; To_Adams(i,:) ] ;
                %
            else
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3), ...
                    R_hand(1,1,i),R_hand(2,1,i),R_hand(3,1,i) ,20,'r')
                hold on
                axis equal
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
                    R_hand(1,2,i),R_hand(2,2,i),R_hand(3,2,i) ,20,'r')
                quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
                    R_hand(1,3,i),R_hand(2,3,i),R_hand(3,3,i) ,20,'b')
                %
                plot3(P_hand(i,1), P_hand(i,2), P_hand(i,3),'or','MarkerSize',7,'MarkerFaceColor','r'),
                plot3(0,0,0,'ok','MarkerSize',7,'MarkerFaceColor','k')
                %text(pos(1)+.01,pos(2)+.01,pos(3)+.01,conf),,hold on
                rossi = [ rossi ; i ] ;
                rossi_index = [ rossi_index; selected_index(i) ];
            end
            fclose(fileID2);
        else
            continue
        end
    else
        flag_presa(i)=-1;
        quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3), ...
            R_hand(1,1,i),R_hand(2,1,i),R_hand(3,1,i) ,20,'r')
        hold on
        axis equal
        quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
            R_hand(1,2,i),R_hand(2,2,i),R_hand(3,2,i) ,20,'r')
        quiver3(P_hand(i,1), P_hand(i,2), P_hand(i,3),...
            R_hand(1,3,i),R_hand(2,3,i),R_hand(3,3,i) ,20,'b')
        plot3(P_hand(i,1), P_hand(i,2), P_hand(i,3),'or','MarkerSize',7,'MarkerFaceColor','r'),
        plot3(0,0,0,'ok','MarkerSize',7,'MarkerFaceColor','k')
        rossi = [ rossi ; i ] ;
        rossi_index = [ rossi_index; selected_index(i) ];
    end
end
%
rossi
verdi
%
save('sim_info_pp')




