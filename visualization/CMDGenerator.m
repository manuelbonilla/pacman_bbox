function CMDGenerator(To_Adams)

fileID = fopen('prova.cmd','w+');
formatSpec='simulation set save_files = yes \n output set output model = .PISAIIT_HAND reqsave = on \n output set results model = .PISAIIT_HAND create = on \n output set output model = .PISAIIT_HAND grsave = on \n \n';
fprintf(fileID,formatSpec);

%%%%%%%%%%%%% Ciclo di creazione del file CMD %%%%%%%%%%%%
for i=1:size(To_Adams,1)
    
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_x real_value = %f\n', To_Adams(i,1) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_y real_value = %f\n', To_Adams(i,2) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.dist_z real_value = %f\n', To_Adams(i,3) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_z1 real_value = %f\n', To_Adams(i,4) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_x2 real_value = %f\n', To_Adams(i,5) );
    fprintf(fileID, 'variable set variable =.PISAIIT_HAND.rot_z3 real_value = %f\n', To_Adams(i,6) );
    fprintf(fileID, 'file adams_data_set write  &\n');
    fprintf(fileID, ' model_name = .PISAIIT_HAND &\n');
    fprintf(fileID, ' file_name = prova%i &\n', i);
    fprintf(fileID, ' write_to_terminal = off\n');
    fprintf(fileID, '\n\n');
    
end

fclose(fileID);
end