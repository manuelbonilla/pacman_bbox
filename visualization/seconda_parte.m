%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% M-file che crea il file ACF per l'esecuzione della seconda parte di %%
%%%% simulazione solo per quele configurazioni in cui non c'è stata      %%
%%%% compenetrazione                                                     %%

cd ('C:\Users\kuka_lwr')
fileID = fopen('prova_batch_2.acf','a');
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEMPO DELLE SIM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_sim_1=5;
step_sim_1=1500;
inc1=time_sim_1/step_sim_1;
time_sim_2=2;
step_sim_2=1500;
inc2=time_sim_2/step_sim_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=1;
 
%%%%%% Creazione della variabile controllo usata anche negli M-file   %%%%
%%%%%% consecutivi                                                    %%%%
controllo=[];

%%%%%%% Ciclo di creazione del file ACF %%%%%%%%%
for rho_var=0:10:30
    for alpha_var=-0.78:0.78:0.78
    for azimut_var=0:0.3:1.57
    for elevation_var=-1.57:0.7:1.57

    a2=['prova_r' num2str(rho_var) 'al_' num2str(abs(alpha_var)) 'az' num2str(azimut_var) 'el_' num2str(abs(elevation_var)) '.req'];
    b2=['prova_r' num2str(rho_var) 'al_' num2str(abs(alpha_var)) 'az' num2str(azimut_var) 'el' num2str(abs(elevation_var)) '.req'];
    c2=['prova_r' num2str(rho_var) 'al' num2str(abs(alpha_var))  'az' num2str(azimut_var) 'el_' num2str(abs(elevation_var)) '.req'];
    d2=['prova_r' num2str(rho_var) 'al' num2str(abs(alpha_var))  'az' num2str(azimut_var) 'el' num2str(abs(elevation_var)) '.req'];
    e2=['prova_r' num2str(rho_var) 'al_' num2str(abs(alpha_var)) 'az_' num2str(abs(azimut_var)) 'el_' num2str(abs(elevation_var)) '.req'];
    f2=['prova_r' num2str(rho_var) 'al_' num2str(abs(alpha_var)) 'az_' num2str(abs(azimut_var)) 'el' num2str(abs(elevation_var)) '.req'];
    g2=['prova_r' num2str(rho_var) 'al' num2str(abs(alpha_var))  'az_' num2str(abs(azimut_var)) 'el_' num2str(abs(elevation_var)) '.req'];
    h2=['prova_r' num2str(rho_var) 'al' num2str(abs(alpha_var))  'az_' num2str(abs(azimut_var)) 'el' num2str(abs(elevation_var)) '.req'];

    if (azimut_var>=0)
        if(alpha_var<0 && elevation_var<0)
                importfile(a2);
        else if(alpha_var<0 && elevation_var>=0)
                importfile(b2);
        else if(alpha_var>=0 && elevation_var<0)
                importfile(c2);
            else 
                importfile(d2);
            end
            end
        end
    else
        if(alpha_var<0 && elevation_var<0)
                importfile(e2);
        else if(alpha_var<0 && elevation_var>=0)
                importfile(f2);
        else if(alpha_var>=0 && elevation_var<0)
                importfile(g2);
            else 
                importfile(h2);
            end
            end
        end
    end
    
    %%%%%% Estrazione dei dati relativi al tempo dal file req %%%%%%%%%%%
    tempo=[];
    dim=size(data,1);
    for i=2:2:dim
    tempo=[tempo data(i,1)];
    end
    
    %Scrivo nel file ACF solo se non c'è stata iniziale
    %compenetrazione cioè solo se la prima simulazione è arrivata alla fine
    if (tempo(end)==5)
        controllo(m)=1;
        input=[rho_var, alpha_var, azimut_var, elevation_var, time_sim_1, step_sim_1, time_sim_2, step_sim_2];

        if (azimut_var>=0)
            if(alpha_var<0 && elevation_var<0)
                formatSpec='File/Model = prova_r%ial_%iaz%iel_%i.adm\nrel/system, file=prova_r%ial_%iaz%iel_%i.sav, out=prova_r%ial_%iaz%iel_%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz%iel_%in2.sav\n\n';
            else  if(alpha_var>=0 && elevation_var<0)
                formatSpec='File/Model = prova_r%ial%iaz%iel_%i.adm\nrel/system, file=prova_r%ial%iaz%iel_%i.sav, out=prova_r%ial%iaz%iel_%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz%iel_%in2.sav\n\n';
            else  if(alpha_var<0 && elevation_var>=0)
                formatSpec='File/Model = prova_r%ial_%iaz%iel%i.adm\nrel/system, file=prova_r%ial_%iaz%iel%i.sav, out=prova_r%ial_%iaz%iel%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz%iel%in2.sav\n\n';
            else 
                formatSpec='File/Model = prova_r%ial%iaz%iel%i.adm\nrel/system, file=prova_r%ial%iaz%iel%i.sav, out=prova_r%ial%iaz%iel%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz%iel%in2.sav\n\n';
                 end
                 end
            end
        else
            if(alpha_var<0 && elevation_var<0)
                formatSpec='File/Model = prova_r%ial_%iaz_%iel_%i.adm\nrel/system, file=prova_r%ial_%iaz_%iel_%i.sav, out=prova_r%ial_%iaz_%iel_%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz_%iel_%in2.sav\n\n';
            else  if(alpha_var>=0 && elevation_var<0)
                formatSpec='File/Model = prova_r%ial%iaz_%iel_%i.adm\nrel/system, file=prova_r%ial%iaz_%iel_%i.sav, out=prova_r%ial%iaz_%iel_%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz_%iel_%in2.sav\n\n';
            else  if(alpha_var<0 && elevation_var>=0)
                formatSpec='File/Model = prova_r%ial_%iaz_%iel%i.adm\nrel/system, file=prova_r%ial_%iaz_%iel%i.sav, out=prova_r%ial_%iaz_%iel%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz_%iel%in2.sav\n\n';
            else 
                formatSpec='File/Model = prova_r%ial%iaz_%iel%i.adm\nrel/system, file=prova_r%ial%iaz_%iel%i.sav, out=prova_r%ial%iaz_%iel%in2\nDEACTIVATE/CONTACT,ID=41\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz_%iel%in2.sav\n\n';
                 end
                 end
            end
        end

        fprintf(fileID,formatSpec,abs((input(:,1))),abs(input(:,2)),abs(input(:,3)),abs(input(:,4)),abs((input(:,1))),abs(input(:,2)),abs(input(:,3)),abs(input(:,4)),abs((input(:,1))),abs(input(:,2)),abs(input(:,3)),abs(input(:,4)),input(:,7),input(:,8),abs((input(:,1))),abs(input(:,2)),abs(input(:,3)),abs(input(:,4)));

    else controllo(m)=0;
    end

%%%%% Aggiornamento del contatore di ''controllo'' %%%%%%%
m=m+1;
end
end
end
end

fclose(fileID);

cd ('C:\Users\kuka_lwr')
save controllo.mat controllo