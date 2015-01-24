simulation set save_files = yes 
 output set output model = .PISAIIT_HAND reqsave = on 
 output set results model = .PISAIIT_HAND create = on 
 output set output model = .PISAIIT_HAND grsave = on 
 
variable set variable =.PISAIIT_HAND.dist_x real_value = 0.021749
variable set variable =.PISAIIT_HAND.dist_y real_value = 0.041776
variable set variable =.PISAIIT_HAND.dist_z real_value = 0.110315
variable set variable =.PISAIIT_HAND.rot_z1 real_value = 0.950520
variable set variable =.PISAIIT_HAND.rot_x2 real_value = 2.917625
variable set variable =.PISAIIT_HAND.rot_z3 real_value = -1.650851
file adams_data_set write  &
 model_name = .PISAIIT_HAND &
 file_name = prova1 &
 write_to_terminal = off


