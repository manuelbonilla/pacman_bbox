function ACFGenerator(To_Adams)

fileID = fopen('prova.acf','w+');
%%%%%%%%%%%%% Ciclo di creazione del file ACF %%%%%%%%%%%%
% 
% File/Model = prova_r0al315az349el326.adm
% INTEGRATOR/GSTIFF , MAXIT=2
% SIMULATE/DYNAMIC,DURATION=3,STEPS=300
% save/system, file=prova_r0al315az349el326.sav

fprintf(fileID, 'File/Model = prova1.adm\n');
fprintf(fileID, 'SIMULATE/DYNAMIC,DURATION=3,STEPS=300\n');
fprintf(fileID, 'save/system, file=prova.sav\n' );
fprintf(fileID, '\n');


for i=1:size(To_Adams,1)
    
    fprintf(fileID, 'File/Model = prova%i.adm\n', i );
    fprintf(fileID, 'INTEGRATOR/GSTIFF , MAXIT=2\n');
    fprintf(fileID, 'SIMULATE/DYNAMIC,DURATION=3,STEPS=3000\n');
    fprintf(fileID, 'save/system, file=prova%i.sav\n', i );
    fprintf(fileID, '\n');
    
end

fclose(fileID);
end