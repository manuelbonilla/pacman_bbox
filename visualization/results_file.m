
load('sim_info.mat')


%% make results file

name = ['Res.txt'];
fileID = fopen(name, 'w+');

for i=1:size(To_Adams_new,1)
       
    input = ['C:\Users\pacman\Desktop\Dany\Matlab--adams\new\collander_collision\prova' num2str(i) '.req'];      %num2str(adams_indexes(i))
    fileID2 = fopen(input, 'r');
    if (fileID2 == -1)
          error_file(i) = i ;
        continue
    end
    fileSC = textscan(fileID2,'%s %s %s %s %s %s');    
    dim_fileSC = size(fileSC{1},1);
    
    %% 
    
    First=71;  % firt valid file .req row 
    Step=24; % distance between two simulations
    Soglia_inf=0; %DA RIVEDERE
    Soglia_sup=30;
    
    
    % vel_x
    k=  dim_fileSC - Step +2; % 23th row
    a = cell2mat(fileSC{1}(k));
    b = str2num(a);
    vel_x= b;
    
    % vel_y
    k=  dim_fileSC - Step+2 ;
    a = cell2mat(fileSC{2}(k));
    b = str2num(a);
    vel_y= b;
    
    %vel_z
    k=  dim_fileSC - Step +2;
    a = cell2mat(fileSC{3}(k));
    b = str2num(a);
    vel_z= b;
    
    % velocity
    prova=i
    Vel=sqrt(vel_x^2+vel_y^2+vel_z^2)
    
    
    %    name = ['Res' num2str(adams_indexes(i)) '.txt'];
    %    fileID = fopen(name, 'w+');
    
    
    
    if ((Vel > Soglia_inf) && (Vel<Soglia_sup))
        
        fprintf(fileID,'****** SIMULATION PISA/IIT SOFT HAND ***** \n');
        fprintf(fileID,'****** Bounding_box algorithm ***** \n ');
        %fprintf(fileID,'File/Model = res%i.adm\n',i);
        fprintf(fileID,'******** Model-%i ********\n', i);
        fprintf(fileID,'****** grasp successful ****** \n\n');
        
    else
        
        fprintf(fileID,'****** SIMULATION PISA/IIT SOFT HAND *****\n');
        fprintf(fileID,'****** Bounding_box algorithm ***** \n');
        %fprintf(fileID,'File/Model = res%i.adm\n',i);
        fprintf(fileID,'******** Model-%i *********\n', i);
        fprintf(fileID,'****** grasp fail ****** \n\n');
        
        
        
    end
    
    
end

