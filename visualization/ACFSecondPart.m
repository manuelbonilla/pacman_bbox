% clear all
% close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% M-file che crea il file ACF per l'esecuzione della seconda parte di %%
%%%% simulazione solo per quele configurazioni in cui non c'è stata      %%
%%%% compenetrazione                                                     %%
load('sim_info')

fileID = fopen('prova_2.acf','w+');
max_steps = 70000; %Max step of the integrator

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEMPO DELLE SIM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_sim_1 = 3 ;
step_sim_1 = 3000 ;
inc1 = time_sim_1/step_sim_1;
time_sim_2 = 2 ;
step_sim_2 = 2000 ;
inc2 = time_sim_2/step_sim_2 ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=1;
 
%%%%%% Creazione della variabile controllo usata anche negli M-file   %%%%
%%%%%% consecutivi                                                    %%%%
controllo=[];

fprintf(fileID, 'File/Model = prova1.adm\n');
fprintf(fileID, 'SIMULATE/DYNAMIC,DURATION=3,STEPS=300\n');
fprintf(fileID, 'save/system, file=prova.sav\n' );
fprintf(fileID, '\n');

%%%%%% Ciclo di creazione del file ACF %%%%%%%%%
for i=1:size(To_Adams,1)
    
    name = ['prova' num2str(i) '.req'];
    fileID2 = fopen(name);
    %                 if (fileID2 == -1)
    %                     continue
    %                 end
    fileSC = textscan(fileID2,'%s %s %s %s %s %s');
    dim_fileSC = size(fileSC{1},1);
    
    if (dim_fileSC > max_steps)
        controllo(m)=1;
        %input=[i];
        %
        fprintf(fileID,'File/Model = prova%i.adm\n',i);
        fprintf(fileID,'rel/system, file=prova%i.sav, out=prova%in2\n',i,i);
        fprintf(fileID,'INTEGRATOR/GSTIFF , MAXIT=2\n');
        fprintf(fileID,'DEACTIVATE/CONTACT,ID=41\n');
        fprintf(fileID,'SIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\n',time_sim_2,step_sim_2);
        fprintf(fileID,'save/system, file=prova%in2.sav\n\n',i);      
    else
        controllo(m)=0;   
    end
    m=m+1;
    fclose(fileID2);
end

fclose(fileID);

save controllo.mat controllo
save('sim_info_parte2')






