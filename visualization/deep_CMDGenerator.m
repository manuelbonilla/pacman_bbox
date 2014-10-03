function deep_CMDGenerator(deep_To_Adams)
for j = 1 : size(deep_To_Adams,3)
name = ['prova_deep' num2str(j) '.cmd'] ;
fileID = fopen(name,'w+');
formatSpec='simulation set save_files = yes \n output set output model = .PISAIIT_HAND reqsave = on \n output set results model = .PISAIIT_HAND create = on \n output set output model = .PISAIIT_HAND grsave = on \n \n';
fprintf(fileID,formatSpec);

%%%%%%%%%%%%% Ciclo di creazione del file CMD %%%%%%%%%%%%

for i=1:size(deep_To_Adams,1)
    %
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_x real_value = %f\n', deep_To_Adams(i,1,j) ); %deep_To_Adams espresso in millimetri
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_y real_value = %f\n', deep_To_Adams(i,2,j) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_z real_value = %f\n', deep_To_Adams(i,3,j) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_z1 real_value = %f\n', deep_To_Adams(i,4,j) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_x2 real_value = %f\n', deep_To_Adams(i,5,j) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_z3 real_value = %f\n', deep_To_Adams(i,6,j) );
    fprintf(fileID, 'file adams_data_set write  &\n');
    fprintf(fileID, ' model_name = .PISAIIT_HAND &\n');
    fprintf(fileID, ' file_name = prova_deep_%i_%i &\n', j, i);
    fprintf(fileID, ' write_to_terminal = off\n');
    fprintf(fileID, '\n\n');
    %
end

fclose(fileID);
end