function deep_ACFGenerator(deep_To_Adams)
for j = 1 : size(deep_To_Adams,3)
name = ['prova_deep' num2str(j) '.acf'] ;
fileID = fopen(name,'w+');
%%%%%%%%%%%%% Ciclo di creazione del file ACF %%%%%%%%%%%%
% 
% File/Model = prova_r0al315az349el326.adm
% INTEGRATOR/GSTIFF , MAXIT=2
% SIMULATE/DYNAMIC,DURATION=3,STEPS=300
% save/system, file=prova_r0al315az349el326.sav

fprintf(fileID, 'File/Model = prova_deep_1_1.adm\n');
fprintf(fileID, 'SIMULATE/DYNAMIC,DURATION=3,STEPS=300\n');
fprintf(fileID, 'save/system, file=prova.sav\n' );
fprintf(fileID, '\n');
%
for i=1:size(deep_To_Adams,1)
    
    fprintf(fileID, 'File/Model = prova_deep_%i_%i.adm\n', j, i );
    fprintf(fileID, 'INTEGRATOR/GSTIFF , MAXIT=2\n');
    fprintf(fileID, 'SIMULATE/DYNAMIC,DURATION=3,STEPS=3000\n');
    fprintf(fileID, 'save/system, file=prova_deep_%i_%i.sav\n', j, i );
    fprintf(fileID, '\n');
    
end

fclose(fileID);
end