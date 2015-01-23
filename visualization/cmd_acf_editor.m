clear
clc

format short

fileID = fopen('prova.cmd','a');
formatSpec='simulation set save_files = yes \n output set output model = .model_3 reqsave = on \n output set results model = .model_3 create = on \n output set output model = .model_3 grsave = on \n \n';
fprintf(fileID,formatSpec);

%%%%%% Contatore funzionale alla scrittura del titolo dei DOE %%%%%%
   

%%%%%%%%%%%%% Ciclo di creazione del file CMD %%%%%%%%%%%%
for rho_var=0:10:30
    for alpha_var=0:0.785:1.57
    for azimut_var=0:1.57:6.28
    for elevation_var=0:1.57:6.28
    

        input=[rho_var, alpha_var, azimut_var, elevation_var ];

        if(azimut_var>=0)
            if(alpha_var<0 && elevation_var<0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial_%iaz%iel_%i & \n write_to_terminal = off \n\n';
            else if(alpha_var<0 && elevation_var>=0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial_%iaz%iel%i & \n write_to_terminal = off \n\n';
            else if(alpha_var>=0 && elevation_var<0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial%iaz%iel_%i & \n write_to_terminal = off \n\n';
            else 
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial%iaz%iel%i & \n write_to_terminal = off \n\n';
                end
                end
            end
        else
            if(alpha_var<0 && elevation_var<0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial_%iaz_%iel_%ial_%i &\nwrite_to_terminal = off\n\n';
            else if(alpha_var<0 && elevation_var>=0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial_%iaz_%iel%ial_%i &\nwrite_to_terminal = off\n\n';
            else if(alpha_var>=0 && elevation_var<0)
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial%iaz_%iel_%ial%i &\nwrite_to_terminal = off\n\n';
            else 
                formatSpec='\n!-------------------------------------- DOE --------------------------------!\nvariable set variable =.model_3.rho real_value = %i \nvariable set variable=.model_3.alpha real_value = %i \nvariable set variable=.model_3.azimut real_value = %i \nvariable set variable=.model_3.elevation real_value = %i \nfile adams_data_set write  & \n model_name = .model_3 & \n file_name = prova_r%ial%iaz_%iel%ial%i &\nwrite_to_terminal = off\n\n';
                end
                end
            end
        end
        fprintf(fileID,formatSpec,input(:,1),input(:,2),input(:,3),input(:,4),input(:,1),ceil(abs(input(:,2))*180/pi),ceil(abs(input(:,3))*180/pi),ceil(abs(input(:,4))*180/pi));
end
end
end
end
%end

fclose(fileID);

fileID = fopen('prova_batch.acf','a');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEMPO DELLE SIM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_sim_1=10;
step_sim_1=1500;
inc1=time_sim_1/step_sim_1;
time_sim_2=5;
step_sim_2=1500;
inc2=time_sim_2/step_sim_2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%% Ciclo di creazione file ACF %%%%%%%%%
for rho_var=0:10:30
    for alpha_var=0:0.785:1.57
    for azimut_var=0:1.57:6.28
    for elevation_var=0:1.57:6.28
  

    %if (abs(alpha_var)>=80)    

    input=[rho_var, alpha_var, azimut_var, elevation_var, time_sim_1, step_sim_1, time_sim_2, step_sim_2];

    if (azimut_var>=0)
        if(alpha_var<0 && elevation_var<0)
            formatSpec='File/Model = prova_r%ial_%iaz%iel_%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz%iel_%i.sav\n\n';
        else  if(alpha_var>=0 && elevation_var<0)
            formatSpec='File/Model = prova_r%ial%iaz%iel_%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz%iel_%i.sav\n\n';
        else  if(alpha_var<0 && elevation_var>=0)
            formatSpec='File/Model = prova_r%ial_%iaz%iel%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz%iel%i.sav\n\n';
        else 
            formatSpec='File/Model = prova_r%ial%iaz%iel%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz%iel%i.sav\n\n';
             end
             end
        end
    else
        if(alpha_var<0 && elevation_var<0)
            formatSpec='File/Model = prova_r%ial_%iaz_%iel_%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz_%iel_%i.sav\n\n';
        else  if(alpha_var>=0 && elevation_var<0)
            formatSpec='File/Model = prova_r%ial%iaz_%iel_%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz_%iel_%i.sav\n\n';
        else  if(alpha_var<0 && elevation_var>=0)
            formatSpec='File/Model = prova_r%ial_%iaz_%iel%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial_%iaz_%iel%i.sav\n\n';
        else 
            formatSpec='File/Model = prova_r%ial%iaz_%iel%i.adm\nSIMULATE/DYNAMIC,DURATION=%i,STEPS=%i\nsave/system, file=prova_r%ial%iaz_%iel%i.sav\n\n';
             end
             end
        end
    end
    fprintf(fileID,formatSpec,abs(input(:,1)),ceil(abs(input(:,2))*180/pi),ceil(abs(input(:,3))*180/pi),ceil(abs(input(:,4))*180/pi),ceil(input(:,5)),ceil(input(:,6)),input(:,1),ceil(abs(input(:,2))*180/pi),ceil(abs(input(:,3))*180/pi),ceil(abs(input(:,4))*180/pi));
end
end
end
end
%end

fclose(fileID);