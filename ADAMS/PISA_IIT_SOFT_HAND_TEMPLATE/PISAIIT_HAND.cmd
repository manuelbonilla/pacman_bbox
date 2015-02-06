!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = rad  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body123
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 10.0  &
   spacing_for_grid = 1000.0
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = PISAIIT_HAND
!
model attributes  &
   model_name = .PISAIIT_HAND  &
   size_of_icons = 10.0
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_distal  &
   adams_id = 59  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_mid2_2  &
   adams_id = 60  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_mid2_1  &
   adams_id = 61  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_mid1_1  &
   adams_id = 62  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_mid1_2  &
   adams_id = 64  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_distal  &
   adams_id = 65  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid2_2  &
   adams_id = 66  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid2_1  &
   adams_id = 67  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid1_2  &
   adams_id = 68  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid1_1  &
   adams_id = 69  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_distal  &
   adams_id = 71  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid2_2  &
   adams_id = 72  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid2_1  &
   adams_id = 73  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid1_2  &
   adams_id = 74  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid1_1  &
   adams_id = 75  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_distal  &
   adams_id = 77  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_mid2_2  &
   adams_id = 78  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_mid2_1  &
   adams_id = 79  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_mid1_2  &
   adams_id = 80  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_mid1_1  &
   adams_id = 81  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_thumb_distal  &
   adams_id = 83  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_thumb_mid2  &
   adams_id = 84  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_thumb_mid1  &
   adams_id = 85  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_thumb_abd  &
   adams_id = 128  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_abd  &
   adams_id = 129  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_abd  &
   adams_id = 130  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_abd  &
   adams_id = 131  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fx  &
   adams_id = 152  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fy  &
   adams_id = 153  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fz  &
   adams_id = 154  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fx  &
   adams_id = 155  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fy  &
   adams_id = 156  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fz  &
   adams_id = 157  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fx  &
   adams_id = 158  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fy  &
   adams_id = 159  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fz  &
   adams_id = 160  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fx  &
   adams_id = 161  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fy  &
   adams_id = 162  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fz  &
   adams_id = 163  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fx  &
   adams_id = 164  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fy  &
   adams_id = 165  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fz  &
   adams_id = 166  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fx  &
   adams_id = 167  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fy  &
   adams_id = 168  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fz  &
   adams_id = 169  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fx  &
   adams_id = 170  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fy  &
   adams_id = 171  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fz  &
   adams_id = 172  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fx  &
   adams_id = 173  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fy  &
   adams_id = 174  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fz  &
   adams_id = 175  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fx  &
   adams_id = 176  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fy  &
   adams_id = 177  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fz  &
   adams_id = 178  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fx  &
   adams_id = 179  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fy  &
   adams_id = 180  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fz  &
   adams_id = 181  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fx  &
   adams_id = 182  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fy  &
   adams_id = 183  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fz  &
   adams_id = 184  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fx  &
   adams_id = 185  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fy  &
   adams_id = 186  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fz  &
   adams_id = 187  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fx  &
   adams_id = 188  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fy  &
   adams_id = 189  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fz  &
   adams_id = 190  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fx  &
   adams_id = 191  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fy  &
   adams_id = 192  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fz  &
   adams_id = 193  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fx  &
   adams_id = 194  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fy  &
   adams_id = 195  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fz  &
   adams_id = 196  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fx  &
   adams_id = 197  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fy  &
   adams_id = 198  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fz  &
   adams_id = 199  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fx  &
   adams_id = 200  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fy  &
   adams_id = 201  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fz  &
   adams_id = 202  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_Fy  &
   adams_id = 203  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_FZ  &
   adams_id = 204  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_Fx  &
   adams_id = 205  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_index_prox  &
   adams_id = 208  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_middle_prox  &
   adams_id = 209  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_ring_prox  &
   adams_id = 210  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_little_prox  &
   adams_id = 211  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.q_thumb_prox  &
   adams_id = 212  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.motor_torque1  &
   adams_id = 213  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_distal  &
   adams_id = 215  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid2_2  &
   adams_id = 216  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid2_1  &
   adams_id = 217  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid1_1  &
   adams_id = 218  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid1_2  &
   adams_id = 219  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_prox  &
   adams_id = 220  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_index_palm  &
   adams_id = 221  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_distal  &
   adams_id = 222  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid1_1  &
   adams_id = 223  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid1_2  &
   adams_id = 224  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid2_1  &
   adams_id = 225  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid2_2  &
   adams_id = 226  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_prox  &
   adams_id = 227  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_little_palm  &
   adams_id = 228  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_distal  &
   adams_id = 229  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid1_1  &
   adams_id = 230  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid1_2  &
   adams_id = 231  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid2_1  &
   adams_id = 232  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid2_2  &
   adams_id = 233  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_palm  &
   adams_id = 234  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_middle_prox  &
   adams_id = 235  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_distal  &
   adams_id = 236  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid1_1  &
   adams_id = 237  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid1_2  &
   adams_id = 238  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid2_1  &
   adams_id = 239  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid2_2  &
   adams_id = 240  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_palm  &
   adams_id = 241  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_ring_prox  &
   adams_id = 242  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_distal  &
   adams_id = 243  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_mid_1  &
   adams_id = 244  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_mid_2  &
   adams_id = 245  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_prox  &
   adams_id = 246  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_palm  &
   adams_id = 247  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_index_distal  &
   adams_id = 334  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_index_mid  &
   adams_id = 335  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_index_prox  &
   adams_id = 336  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_distal  &
   adams_id = 337  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_mid  &
   adams_id = 338  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_prox  &
   adams_id = 339  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_distal  &
   adams_id = 340  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_mid  &
   adams_id = 341  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_prox  &
   adams_id = 342  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_little_distal  &
   adams_id = 343  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_little_mid  &
   adams_id = 344  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_little_prox  &
   adams_id = 345  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_thumb_distal  &
   adams_id = 346  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.elastico_thumb_prox  &
   adams_id = 347  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fx  &
   adams_id = 348  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fy  &
   adams_id = 349  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fz  &
   adams_id = 350  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.CONTACT_palm_F  &
   adams_id = 351  &
   initial_condition = 0.0  &
   function = ""
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.CONTACT_palm_F  &
   visibility = on
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.motor_torque_index  &
   adams_id = 352  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.motor_torque_ring  &
   adams_id = 353  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.motor_torque_little  &
   adams_id = 354  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.VARIABLE_355  &
   adams_id = 355  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.primo_membro_tau  &
   adams_id = 356  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_index_abd  &
   adams_id = 357  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_distal_index  &
   adams_id = 358  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_mid1_index  &
   adams_id = 359  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2mid1_index  &
   adams_id = 360  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_middle  &
   adams_id = 361  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_little  &
   adams_id = 362  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_little  &
   adams_id = 363  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_distal_middle  &
   adams_id = 364  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_index  &
   adams_id = 365  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_index  &
   adams_id = 366  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_index  &
   adams_id = 367  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_adb_little  &
   adams_id = 368  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_distal_little  &
   adams_id = 369  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_little  &
   adams_id = 370  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_little  &
   adams_id = 371  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_little  &
   adams_id = 372  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_middle  &
   adams_id = 373  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_middle  &
   adams_id = 374  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_middle  &
   adams_id = 375  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_middle  &
   adams_id = 376  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_abd_ring  &
   adams_id = 377  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_distal_ring  &
   adams_id = 378  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_ring  &
   adams_id = 379  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_ring  &
   adams_id = 380  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_ring  &
   adams_id = 381  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_ring  &
   adams_id = 382  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_prox_ring  &
   adams_id = 383  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_abd_thumb  &
   adams_id = 384  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_distal_thumb  &
   adams_id = 385  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_mid_thumb  &
   adams_id = 386  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid_thumb  &
   adams_id = 387  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.qp_prox_thumb  &
   adams_id = 388  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.SECONDO_MEMBRO_TAU  &
   adams_id = 389  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.ultimo_membro_tau  &
   adams_id = 390  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PISAIIT_HAND.stop_tau  &
   adams_id = 391  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .PISAIIT_HAND.aluminum  &
   adams_id = 14  &
   youngs_modulus = 7.1705E+004  &
   poissons_ratio = 0.33  &
   density = 2.74E-006
!
material create  &
   material_name = .PISAIIT_HAND.wood  &
   adams_id = 9  &
   youngs_modulus = 1.1E+004  &
   poissons_ratio = 0.33  &
   density = 4.38E-007  &
   comments = "Douglas Fir"
!
material create  &
   material_name = .PISAIIT_HAND.glass  &
   adams_id = 12  &
   youngs_modulus = 4.62E+004  &
   poissons_ratio = 0.245  &
   density = 2.595E-006
!
material create  &
   material_name = .PISAIIT_HAND.steel  &
   adams_id = 15  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_549  &
   adams_id = 549  &
   location = 1.0, -60.0079648524, -9.9960215371  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_551  &
   adams_id = 551  &
   location = 1.0, -60.0079648524, -9.9960215371  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_PARAM  &
   adams_id = 553  &
   location = 1.828325, 61.505931, 117.990773  &
   orientation = -2.9183157018, -1.7724293687E-002, 0.477298026
!
marker attributes  &
   marker_name = .PISAIIT_HAND.ground.MARKER_PARAM  &
   visibility = on  &
   name_visibility = on  &
   size_of_icons = 250.0
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_567  &
   adams_id = 567  &
   location = -159.8252581157, 10.2429494042, 111.340526104  &
   orientation = -1.3566853125, 0.4772167934, 1.9953851769E-002
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_568  &
   adams_id = 568  &
   location = 30.2714817102, 89.3043790349, 14.704284322  &
   orientation = -3.0597341357, -0.8394227785, -3.0370790507
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_569  &
   adams_id = 569  &
   location = 30.2714817102, 89.3043790349, 14.704284322  &
   orientation = -3.0597341357, -0.8394227785, -3.0370790507
!
marker create  &
   marker_name = .PISAIIT_HAND.ground.MARKER_778  &
   adams_id = 778  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.ground  &
   material_type = .PISAIIT_HAND.steel
!
part attributes  &
   part_name = .PISAIIT_HAND.ground  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!------------------------------------ palm ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.palm  &
   adams_id = 2  &
   location = -3.5644717743, 1.7722430324, 0.3920403091  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.palm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_rif  &
   adams_id = 1  &
   location = 48.5644717743, -66.7722430324, -20.3920403091  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_rif  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_index  &
   adams_id = 2  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_index  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_middle  &
   adams_id = 3  &
   location = 3.5644717743, 38.2277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_ring  &
   adams_id = 4  &
   location = -15.9355282257, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_ring  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_little  &
   adams_id = 5  &
   location = -35.4355282257, 11.2277569676, -13.7809803091  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_little  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_12  &
   adams_id = 34  &
   location = 56.8253969826, -6.2837630364, -2.0041891557  &
   orientation = 0.3924832608, 0.1761667387, 0.4012961583
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_12  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.cm  &
   adams_id = 71  &
   location = -2.8712212335, -25.8930953425, -13.2105368112  &
   orientation = -1.6009883065, 0.1007951862, -1.5538938773
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_thumb  &
   adams_id = 35  &
   location = 36.4334717743, -15.7900430324, -5.3117603091  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_thumb  &
   color = BLUE  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_369  &
   adams_id = 369  &
   location = 3.5644717743, 38.2277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_369  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_486  &
   adams_id = 486  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_486  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_488  &
   adams_id = 488  &
   location = -15.9355282257, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_488  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_490  &
   adams_id = 490  &
   location = -35.4355282257, 11.2277569676, -13.7809803091  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_490  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_492  &
   adams_id = 492  &
   location = 36.4334717743, -15.7900430324, -5.3117603091  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_492  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_494  &
   adams_id = 494  &
   location = 36.4334717743, -15.7900430324, -5.3117603091  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_494  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_496  &
   adams_id = 496  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_496  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_498  &
   adams_id = 498  &
   location = -15.9355282257, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_498  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_500  &
   adams_id = 500  &
   location = -35.4355282257, 11.2277569676, -13.7809803091  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_500  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_502  &
   adams_id = 502  &
   location = 36.4334717743, -15.7900430324, -5.3117603091  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_502  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_505  &
   adams_id = 505  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_505  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_508  &
   adams_id = 508  &
   location = -15.9355282257, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_508  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_511  &
   adams_id = 511  &
   location = -35.4355282257, 11.2277569676, -13.7809803091  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_511  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_547  &
   adams_id = 547  &
   location = 4.5644717743, -61.7802078848, -10.3880618462  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_547  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_548  &
   adams_id = 548  &
   location = 4.5644717743, -61.7802078848, -10.3880618462  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_548  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_550  &
   adams_id = 550  &
   location = 4.5644717743, -61.7802078848, -10.3880618462  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_550  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.ref_palm_geom  &
   adams_id = 552  &
   location = 3.5644717743, -31.7722430324, -10.3920403091  &
   orientation = -1.5707963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.ref_palm_geom  &
   visibility = on  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_681  &
   adams_id = 681  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_682  &
   adams_id = 682  &
   location = 3.5644717743, 38.2277569676, -14.2814403091  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_683  &
   adams_id = 683  &
   location = -15.9355282257, 24.7277569676, -14.2814403091  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_684  &
   adams_id = 684  &
   location = -35.4355282257, 11.2277569676, -13.7809803091  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_685  &
   adams_id = 685  &
   location = 36.4334717743, -15.7900430324, -5.3117603091  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.grasp_marker  &
   adams_id = 843  &
   location = 3.5644717743, 38.2277569676, -0.3920403091  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.grasp_marker  &
   color = RED  &
   size_of_icons = 100.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_765  &
   adams_id = 765  &
   location = 23.0644717743, 24.7277569676, -14.2814403091  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_775  &
   adams_id = 775  &
   location = 37.5644717743, -1.0304660448, -10.0396850937  &
   orientation = -3.1407963268, 0.0, 0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_775  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.ref_palm  &
   adams_id = 776  &
   location = 3.5644717743, -1.7722430324, -0.3920403091  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.ref_palm  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .PISAIIT_HAND.palm.MARKER_862  &
   adams_id = 862  &
   location = 3.5644717743, 38.2277569676, -0.3920403091  &
   orientation = 0.0, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.palm.MARKER_862  &
   visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_503  &
   adams_id = 503
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_506  &
   adams_id = 506
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_509  &
   adams_id = 509
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_512  &
   adams_id = 512
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_766  &
   adams_id = 766
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_768  &
   adams_id = 768
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_771  &
   adams_id = 771
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.palm.FMARKER_774  &
   adams_id = 774
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.palm  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.palm.palm_geom  &
   reference_marker = .PISAIIT_HAND.palm.MARKER_862  &
   file_name = "palm.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.palm  &
   color = WHITE  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_index_prox -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_index_prox  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_index_prox
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.cm  &
   adams_id = 72  &
   location = 19.9181392528, 27.6502253925, -15.4472184048  &
   orientation = -0.1156466611, 4.2251745893E-002, -0.3465950791
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index  &
   adams_id = 36  &
   location = 22.5781719126, 34.9572343186, -13.8826652763  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_285  &
   adams_id = 285  &
   location = 22.5781719126, 34.9560398286, -12.3826657519  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_285  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_485  &
   adams_id = 485  &
   location = 19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_485  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_495  &
   adams_id = 495  &
   location = 19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_495  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_504  &
   adams_id = 504  &
   location = 19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_504  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_764  &
   adams_id = 764  &
   location = 19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, 0.3490647416
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_764  &
   visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_769  &
   adams_id = 769  &
   location = 24.7157912963, 40.8291192165, -12.3779888604  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_769  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_772  &
   adams_id = 772  &
   location = 24.7157912963, 40.8291192165, -12.3779888604  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_772  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_868  &
   adams_id = 868  &
   location = 19.5, 26.5, -13.8894  &
   orientation = 7.9632679491E-004, 0.0, -1.9198610684
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_868  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_index_prox  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_index_prox.PHALANX_index_prox_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_index_prox.MARKER_868  &
   file_name = "prox.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_index_prox  &
   color = WHITE  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_index_mid1 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid1  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_index_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_300  &
   adams_id = 300  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_300  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310  &
   adams_id = 310  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.cm  &
   adams_id = 73  &
   location = 28.7369772557, 51.9176629552, -13.0199750938  &
   orientation = 1.70860698, -0.3452979754, 4.5890126518E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index  &
   adams_id = 37  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index  &
   adams_id = 38  &
   location = 30.0861270995, 55.6364591043, -13.866197852  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index  &
   color = CYAN  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 100.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287  &
   adams_id = 287  &
   location = 27.0146908867, 47.1755817473, -12.3729350012  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289  &
   adams_id = 289  &
   location = 30.0861270995, 55.6352646142, -12.3661983276  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_311  &
   adams_id = 311  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_311  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_712  &
   adams_id = 712  &
   location = 31.4512098608, 59.3963181562, -13.8632037749  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_712  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_716  &
   adams_id = 716  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_716  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_718  &
   adams_id = 718  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_718  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_787  &
   adams_id = 787  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.0680898407E-003, 7.4851935515E-004, -0.3482685165
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_787  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid1  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_index_mid1.PHALANX_index_mid1_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_787  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid1  &
   color = WHITE  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_index_mid2 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid2  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_index_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_302  &
   adams_id = 302  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_302  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313  &
   adams_id = 313  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.cm  &
   adams_id = 74  &
   location = 36.2449324426, 72.5968877409, -13.0035076695  &
   orientation = 1.70860698, -0.3452979754, 4.5890126518E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   adams_id = 39  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index  &
   adams_id = 40  &
   location = 37.5940822865, 76.3156838899, -13.8497304277  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291  &
   adams_id = 291  &
   location = 34.5226460736, 67.854806533, -12.3564675769  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293  &
   adams_id = 293  &
   location = 37.5940822865, 76.3144893998, -12.3497309033  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_314  &
   adams_id = 314  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_314  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_316  &
   adams_id = 316  &
   location = 57.0142498512, 8.0508948784, 28.3274120717  &
   orientation = -1.5699719543, -0.2615925667, -3.1413794549
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_316  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_710  &
   adams_id = 710  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_710  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_792  &
   adams_id = 792  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.0680898407E-003, 7.4851935515E-004, -0.3482685165
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_792  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid2  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_index_mid2.PHALANX_index_mid2_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_792  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_index_mid2  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_index_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_index_distal  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_index_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_304  &
   adams_id = 304  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_304  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.cm  &
   adams_id = 20  &
   location = 43.752886638, 93.2761101851, -12.9870430292  &
   orientation = 1.7086082043, -0.3452979671, 4.5890403506E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   adams_id = 41  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_295  &
   adams_id = 295  &
   location = 42.0306012606, 88.5340313186, -12.3400001526  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_295  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_317  &
   adams_id = 317  &
   location = 57.0142498512, 8.0508948784, 28.3274120717  &
   orientation = -1.5699719543, -0.2615925667, -3.1413794549
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_317  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_704  &
   adams_id = 704  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_713  &
   adams_id = 713  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_715  &
   adams_id = 715  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_715  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_780  &
   adams_id = 780  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.0680898407E-003, 7.4851935516E-004, -0.3482685165
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_780  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_index_distal  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_index_distal.PHALANX_index_distal_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_index_distal.MARKER_780  &
   file_name = "distal.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_index_distal  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_middle_prox -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_middle_prox  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_middle_prox
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.cm  &
   adams_id = 76  &
   location = -2.2670488352E-003, 41.2239437546, -15.4471591652  &
   orientation = -0.123043309, 6.8339657253E-004, 8.9462229796E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle  &
   adams_id = 42  &
   location = 0.0, 48.9999971464, -13.8822330596  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333  &
   adams_id = 333  &
   location = 0.0, 48.9999971464, -13.8822330596  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_368  &
   adams_id = 368  &
   location = 0.0, 40.0, -13.8894  &
   orientation = -3.1407963268, 0.0, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_368  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_807  &
   adams_id = 807  &
   location = 0.0, 40.0, -13.8894  &
   orientation = 7.9569265845E-004, 7.9632654238E-004, -1.5699999997
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_807  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_middle_prox  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_middle_prox.PHALANX_middle_prox_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_807  &
   file_name = "prox.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_middle_prox  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_middle_mid1 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid1  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_middle_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_353  &
   adams_id = 353  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_353  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359  &
   adams_id = 359  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.cm  &
   adams_id = 78  &
   location = -1.3637414641E-002, 67.0439808341, -13.0186800131  &
   orientation = 1.7004731768, 7.5062283987E-004, -8.4192747694E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle  &
   adams_id = 43  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle  &
   adams_id = 44  &
   location = -1.7519187636E-002, 70.9999831954, -13.8647138775  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_336  &
   adams_id = 336  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_336  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337  &
   adams_id = 337  &
   location = -1.7519187636E-002, 70.9999831954, -13.8647138775  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_335  &
   adams_id = 348  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_335  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_360  &
   adams_id = 360  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_360  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_725  &
   adams_id = 725  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_725  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_727  &
   adams_id = 727  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_727  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_797  &
   adams_id = 797  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = 7.9569265845E-004, 7.9632654238E-004, 7.9632704739E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_797  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid1  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_middle_mid1.PHALANX_middle_mid1_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_797  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid1  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_middle_mid2 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid2  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_middle_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_355  &
   adams_id = 355  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_355  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362  &
   adams_id = 362  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.cm  &
   adams_id = 80  &
   location = -3.1156602277E-002, 89.0439668831, -13.001160831  &
   orientation = 1.7004731768, 7.5062283987E-004, -8.4192747694E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle  &
   adams_id = 45  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle  &
   adams_id = 46  &
   location = -3.5038375272E-002, 92.9999692444, -13.8471946954  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_340  &
   adams_id = 340  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_340  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341  &
   adams_id = 341  &
   location = -3.5038375272E-002, 92.9999692444, -13.8471946954  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_339  &
   adams_id = 350  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_339  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_363  &
   adams_id = 363  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_363  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_722  &
   adams_id = 722  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_722  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_724  &
   adams_id = 724  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_724  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_810  &
   adams_id = 810  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = 7.9569265845E-004, 7.9632654238E-004, 7.9632704739E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_810  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid2  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_middle_mid2.PHALANX_middle_mid2_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_810  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_middle_mid2  &
   color = WHITE  &
   size_of_icons = 10.0
!
!--------------------------- PHALANX_middle_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_middle_distal  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_middle_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_357  &
   adams_id = 357  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_357  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365  &
   adams_id = 365  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.cm  &
   adams_id = 82  &
   location = -4.867592018E-002, 111.0439503929, -12.983644433  &
   orientation = 1.700474328, 7.5057723755E-004, -8.4206574903E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle  &
   adams_id = 47  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_343  &
   adams_id = 352  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_343  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_366  &
   adams_id = 366  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_366  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_719  &
   adams_id = 719  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_719  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_721  &
   adams_id = 721  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_721  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_790  &
   adams_id = 790  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = 7.9569265845E-004, 7.9632654238E-004, 7.9632704739E-004
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_790  &
   visibility = on
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_middle_distal  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_middle_distal.PHALANX_middle_distal_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_790  &
   file_name = "distal.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_middle_distal  &
   color = WHITE  &
   visibility = on  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_ring_prox ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_ring_prox  &
   adams_id = 11  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_ring_prox
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.cm  &
   adams_id = 84  &
   location = -19.6607519589, 27.7133325742, -15.4471676151  &
   orientation = -0.1220967901, -1.5335809594E-002, 0.1299087134
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring  &
   adams_id = 48  &
   location = -20.6667072836, 35.4240542139, -13.882293535  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370  &
   adams_id = 370  &
   location = -20.6667072836, 35.4240542139, -13.882293535  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_487  &
   adams_id = 487  &
   location = -19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_487  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_497  &
   adams_id = 497  &
   location = -19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_497  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_507  &
   adams_id = 507  &
   location = -19.5, 26.5, -13.8894  &
   orientation = -3.1407963268, 0.0, -0.13
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_507  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_767  &
   adams_id = 767  &
   location = -19.5, 26.5, -13.8894  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_806  &
   adams_id = 806  &
   location = -19.5, 26.5, -13.8894  &
   orientation = 6.9246687937E-004, 7.8952484727E-004, -1.439999959
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_806  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_ring_prox  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_ring_prox.PHALANX_ring_prox_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_806  &
   file_name = "prox.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_ring_prox  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_ring_mid1 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid1  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_ring_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_385  &
   adams_id = 385  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_385  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391  &
   adams_id = 391  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.cm  &
   adams_id = 86  &
   location = -23.0194343833, 53.3140072688, -13.0188631472  &
   orientation = 1.7015703991, 0.1296663099, -1.7644873281E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring  &
   adams_id = 49  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring  &
   adams_id = 50  &
   location = -23.5360288758, 57.2361309582, -13.8649239902  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_372  &
   adams_id = 372  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_372  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374  &
   adams_id = 374  &
   location = -23.5360288758, 57.2361309582, -13.8649239902  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_392  &
   adams_id = 392  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_392  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_734  &
   adams_id = 734  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_734  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_736  &
   adams_id = 736  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_736  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_799  &
   adams_id = 799  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = 6.9246687937E-004, 7.8952484727E-004, 0.1307963678
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_799  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid1  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_ring_mid1.PHALANX_ring_mid1_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_799  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid1  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_ring_mid2 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid2  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_ring_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_387  &
   adams_id = 387  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_387  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394  &
   adams_id = 394  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.cm  &
   adams_id = 88  &
   location = -25.8887559755, 75.1260840131, -13.0014936024  &
   orientation = 1.7015703991, 0.1296663099, -1.7644873281E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring  &
   adams_id = 51  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring  &
   adams_id = 52  &
   location = -26.4053504681, 79.0482077025, -13.8475544453  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376  &
   adams_id = 376  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378  &
   adams_id = 378  &
   location = -26.4053504681, 79.0482077025, -13.8475544453  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_395  &
   adams_id = 395  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_395  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_731  &
   adams_id = 731  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_731  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_733  &
   adams_id = 733  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_733  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_798  &
   adams_id = 798  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = 6.9246687937E-004, 7.8952484727E-004, 0.1307963678
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_798  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid2  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_ring_mid2.PHALANX_ring_mid2_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_798  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_ring_mid2  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_ring_distal -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_ring_distal  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_ring_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_389  &
   adams_id = 389  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_389  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397  &
   adams_id = 397  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.cm  &
   adams_id = 90  &
   location = -28.7580773674, 96.9381582228, -12.9841268416  &
   orientation = 1.701571559, 0.129666245, -1.7645160676E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring  &
   adams_id = 53  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_380  &
   adams_id = 380  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_380  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_398  &
   adams_id = 398  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_398  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_728  &
   adams_id = 728  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_728  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_730  &
   adams_id = 730  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_730  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_794  &
   adams_id = 794  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = 6.9246687937E-004, 7.8952484727E-004, 0.1307963678
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_794  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_ring_distal  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_ring_distal.PHALANX_ring_distal_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_794  &
   file_name = "distal.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_ring_distal  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_little_prox -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_little_prox  &
   adams_id = 15  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_little_prox
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.cm  &
   adams_id = 92  &
   location = -39.3165239848, 14.1822658831, -14.9467323544  &
   orientation = -0.1190959058, -3.1100026364E-002, 0.2589855402
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little  &
   adams_id = 54  &
   location = -41.313724967, 21.6975070455, -13.3820139406  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_402  &
   adams_id = 402  &
   location = -41.313724967, 21.6975070455, -13.3820139406  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_402  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_489  &
   adams_id = 489  &
   location = -39.0, 13.0, -13.38894  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_489  &
   visibility = on  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_499  &
   adams_id = 499  &
   location = -39.0, 13.0, -13.38894  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_499  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_510  &
   adams_id = 510  &
   location = -39.0, 13.0, -13.38894  &
   orientation = -3.1407963268, 0.0, -0.26
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_510  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_770  &
   adams_id = 770  &
   location = -39.0, 13.0, -13.38894  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_805  &
   adams_id = 805  &
   location = -39.0, 13.0, -13.38894  &
   orientation = 5.9099386434E-004, 7.6939896029E-004, -1.309999921
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_805  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_little_prox  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_little_prox.PHALANX_little_prox_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_little_prox.MARKER_805  &
   file_name = "prox.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_little_prox  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_little_mid1 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid1  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_little_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_417  &
   adams_id = 417  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_417  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423  &
   adams_id = 423  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.cm  &
   adams_id = 94  &
   location = -45.9658366285, 39.1315034052, -12.5189466434  &
   orientation = 1.7049299915, 0.2585445521, -3.5025548967E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little  &
   adams_id = 55  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little  &
   adams_id = 56  &
   location = -46.8575006665, 42.4704769187, -13.3654718646  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404  &
   adams_id = 404  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406  &
   adams_id = 406  &
   location = -46.8575006665, 42.4704769187, -13.3654718646  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_424  &
   adams_id = 424  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_424  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_743  &
   adams_id = 743  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_743  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_745  &
   adams_id = 745  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_745  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_801  &
   adams_id = 801  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = 5.9099386434E-004, 7.6939896029E-004, 0.2607964058
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_801  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid1  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_little_mid1.PHALANX_little_mid1_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_801  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid1  &
   color = WHITE  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_little_mid2 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid2  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_little_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_419  &
   adams_id = 419  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_419  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426  &
   adams_id = 426  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.cm  &
   adams_id = 96  &
   location = -51.509612328, 59.9044732784, -12.5024045674  &
   orientation = 1.7049299915, 0.2585445521, -3.5025548967E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little  &
   adams_id = 57  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little  &
   adams_id = 58  &
   location = -52.4012763659, 63.243446792, -13.3489297886  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408  &
   adams_id = 408  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410  &
   adams_id = 410  &
   location = -52.4012763659, 63.243446792, -13.3489297886  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_427  &
   adams_id = 427  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_427  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_740  &
   adams_id = 740  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_740  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_742  &
   adams_id = 742  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_742  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_800  &
   adams_id = 800  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = 5.9099386434E-004, 7.6939896029E-004, 0.2607964058
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_800  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid2  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_little_mid2.PHALANX_little_mid2_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_800  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_little_mid2  &
   color = WHITE  &
   size_of_icons = 10.0
!
!--------------------------- PHALANX_little_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_little_distal  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_little_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_421  &
   adams_id = 421  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_421  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_429  &
   adams_id = 429  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_429  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.cm  &
   adams_id = 98  &
   location = -57.0533875, 80.6774406643, -12.4858652754  &
   orientation = 1.7049311799, 0.2585444672, -3.5025990224E-002
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little  &
   adams_id = 59  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_412  &
   adams_id = 412  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_412  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_430  &
   adams_id = 430  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_430  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_737  &
   adams_id = 737  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_737  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_739  &
   adams_id = 739  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_739  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_795  &
   adams_id = 795  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = 5.9099386434E-004, 7.6939896029E-004, 0.2607964058
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_795  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_little_distal  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_little_distal.PHALANX_little_distal_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_little_distal.MARKER_795  &
   file_name = "distal.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_little_distal  &
   color = WHITE  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_thumb_prox -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_prox  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_thumb_prox
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.cm  &
   adams_id = 100  &
   location = 49.350981439, -5.4872403364, -1.263336336  &
   orientation = 1.6723840773, -1.0143692996, 1.2328591307
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb  &
   adams_id = 61  &
   location = 53.2609252083, -4.511520004, -1.6121488466  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467  &
   adams_id = 467  &
   location = 53.2609252083, -4.511520004, -1.6121488466  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491  &
   adams_id = 491  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493  &
   adams_id = 493  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_501  &
   adams_id = 501  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_501  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_773  &
   adams_id = 773  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = -1.57, -0.436332313, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_804  &
   adams_id = 804  &
   location = 77.9004298738, -39.418771511, -14.0852549184  &
   orientation = -1.2026027618, -0.1677572447, -3.0774734511
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_811  &
   adams_id = 811  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = 0.3924832608, 0.1761667387, 0.4012961583
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_811  &
   visibility = on
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_870  &
   adams_id = 870  &
   location = 32.869, -14.0178, -4.91972  &
   orientation = -1.57, -0.436332313, 0.0
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_870  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_prox  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_thumb_prox.PHALANX_thumb_prox_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_870  &
   file_name = "prox_thumb.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_prox  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!----------------------------- PHALANX_thumb_mid ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_mid  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_thumb_mid
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_475  &
   adams_id = 475  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_475  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479  &
   adams_id = 479  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.cm  &
   adams_id = 102  &
   location = 69.2883930525, 3.814509734, -1.2533167657  &
   orientation = 1.6726324624, -1.0147604959, 1.2322761974
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb  &
   adams_id = 62  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb  &
   adams_id = 63  &
   location = 73.1996965231, 4.7860788064, -1.604744918  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469  &
   adams_id = 469  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471  &
   adams_id = 471  &
   location = 76.8249276713, 6.4765513173, -1.6033987491  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_480  &
   adams_id = 480  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_480  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_749  &
   adams_id = 749  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_749  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_751  &
   adams_id = 751  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_751  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_865  &
   adams_id = 865  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = -1.1040843399, -0.3947378917, -1.379779351
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_865  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_mid  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_thumb_mid.PHALANX_thumb_mid_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_865  &
   file_name = "mid.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_mid  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!---------------------------- PHALANX_thumb_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_distal  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PHALANX_thumb_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_477  &
   adams_id = 477  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_477  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482  &
   adams_id = 482  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.cm  &
   adams_id = 104  &
   location = 89.2271631112, 13.1121052257, -1.2459141118  &
   orientation = 1.6726332664, -1.0147594249, 1.232276743
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.cm  &
   visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb  &
   adams_id = 64  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb  &
   visibility = on  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_473  &
   adams_id = 473  &
   location = 88.6069289028, 11.970586978, -1.5990237004  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_473  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_483  &
   adams_id = 483  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_483  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_746  &
   adams_id = 746  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_746  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_748  &
   adams_id = 748  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_748  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 10.0
!
marker create  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_863  &
   adams_id = 863  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = -1.1040843399, -0.3947378917, -1.379779351
!
marker attributes  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_863  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_distal  &
   material_type = .PISAIIT_HAND.aluminum
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   reference_marker = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_863  &
   file_name = "distal.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.PHALANX_thumb_distal  &
   color = WHITE  &
   name_visibility = off  &
   size_of_icons = 10.0
!
!---------------------------- LINK_index_prox_mid1 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_index_prox_mid1  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_index_prox_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_301  &
   adams_id = 301  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_301  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244  &
   adams_id = 244  &
   location = 22.5781719126, 34.9572343186, -13.8826652763  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245  &
   adams_id = 245  &
   location = 27.0146908867, 47.1767762374, -13.8729345256  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.cm  &
   adams_id = 319  &
   location = 24.7964313996, 41.067005278, -13.8777999009  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_286  &
   adams_id = 286  &
   location = 22.5781719126, 34.9560398286, -12.3826657519  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_286  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_288  &
   adams_id = 288  &
   location = 27.0146908867, 47.1755817473, -12.3729350012  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_288  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_297  &
   adams_id = 297  &
   location = 24.7964313996, 41.067005278, -13.8777999009  &
   orientation = 1.339853191E-003, 1.497038655E-003, -1.9190651484
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_297  &
   visibility = off  &
   name_visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.FMARKER_690  &
   adams_id = 690
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.FMARKER_757  &
   adams_id = 757
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_index_prox_mid1  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_index_prox_mid1.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.600665208E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_index_prox_mid1.LINK_31  &
   i_marker = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244  &
   j_marker = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_index_prox_mid1  &
   color = GREEN
!
!---------------------------- LINK_index_mid1_mid2 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_index_mid1_mid2  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_index_mid1_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_303  &
   adams_id = 303  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_303  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246  &
   adams_id = 246  &
   location = 30.0861270995, 55.6364591043, -13.866197852  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246  &
   color = RED  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 100.0
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_247  &
   adams_id = 247  &
   location = 34.5226460736, 67.856001023, -13.8564671013  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_247  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.cm  &
   adams_id = 320  &
   location = 32.3043865866, 61.7462300637, -13.8613324766  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_290  &
   adams_id = 290  &
   location = 30.0861270995, 55.6352646142, -12.3661983276  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_290  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_292  &
   adams_id = 292  &
   location = 34.5226460736, 67.854806533, -12.3564675769  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_292  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_298  &
   adams_id = 298  &
   location = 32.3043865866, 61.7462300637, -13.8613324766  &
   orientation = 1.339853191E-003, 1.497038655E-003, -1.9190651484
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_298  &
   visibility = off  &
   name_visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.FMARKER_691  &
   adams_id = 691
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.FMARKER_756  &
   adams_id = 756
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_index_mid1_mid2  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_index_mid1_mid2.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.600665208E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_index_mid1_mid2.LINK_32  &
   i_marker = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246  &
   j_marker = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_247  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_index_mid1_mid2  &
   color = MAIZE
!
!--------------------------- LINK_index_mid2_distal ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_index_mid2_distal  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_index_mid2_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_305  &
   adams_id = 305  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_305  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248  &
   adams_id = 248  &
   location = 37.5940822865, 76.3156838899, -13.8497304277  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_249  &
   adams_id = 249  &
   location = 42.0306012606, 88.5352258087, -13.839999677  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.cm  &
   adams_id = 321  &
   location = 39.8123417735, 82.4254548493, -13.8448650524  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_294  &
   adams_id = 294  &
   location = 37.5940822865, 76.3144893998, -12.3497309033  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_296  &
   adams_id = 296  &
   location = 42.0306012606, 88.5340313186, -12.3400001526  &
   orientation = 1.5739260667, 1.2225270387, 3.139399327
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_299  &
   adams_id = 299  &
   location = 39.8123417735, 82.4254548493, -13.8448650524  &
   orientation = 1.339853191E-003, 1.497038655E-003, -1.9190651484
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_705  &
   adams_id = 705  &
   location = 63.3408949071, -10.2680222893, 28.3273613409  &
   orientation = 0.0, 0.0, 0.0
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.FMARKER_714  &
   adams_id = 714
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.FMARKER_755  &
   adams_id = 755
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_index_mid2_distal  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_index_mid2_distal.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652085E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_index_mid2_distal.LINK_33  &
   i_marker = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248  &
   j_marker = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_249  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_index_mid2_distal  &
   color = CYAN
!
!--------------------------- LINK_middle_prox_mid1 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_middle_prox_mid1  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_middle_prox_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_354  &
   adams_id = 354  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_354  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250  &
   adams_id = 250  &
   location = 0.0, 48.9999971464, -13.8822330596  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251  &
   adams_id = 251  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.cm  &
   adams_id = 322  &
   location = -5.1761236198E-003, 55.4999930245, -13.8770569376  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334  &
   adams_id = 334  &
   location = 0.0, 48.9999971464, -13.8822330596  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335  &
   adams_id = 335  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345  &
   adams_id = 345  &
   location = -5.1761236198E-003, 55.4999930245, -13.8770569376  &
   orientation = 7.9505852123E-004, 1.5926530848E-003, -1.569999999
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_336  &
   adams_id = 349  &
   location = -1.035224724E-002, 61.9999889026, -13.8718808156  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_336  &
   visibility = off  &
   name_visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.FMARKER_693  &
   adams_id = 693
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.FMARKER_726  &
   adams_id = 726
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_middle_prox_mid1  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_middle_prox_mid1.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652094E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_prox_mid1.LINK_34  &
   i_marker = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250  &
   j_marker = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_middle_prox_mid1  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
!--------------------------- LINK_middle_mid1_mid2 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_middle_mid1_mid2  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_356  &
   adams_id = 356  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_356  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252  &
   adams_id = 252  &
   location = -1.7519187636E-002, 70.9999831954, -13.8647138775  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253  &
   adams_id = 253  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.cm  &
   adams_id = 323  &
   location = -2.2695311256E-002, 77.4999790735, -13.8595377555  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338  &
   adams_id = 338  &
   location = -1.7519187636E-002, 70.9999831954, -13.8647138775  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339  &
   adams_id = 339  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346  &
   adams_id = 346  &
   location = -2.5880618099E-002, 81.499976537, -13.8563524497  &
   orientation = 7.9505852123E-004, 1.5926530848E-003, -1.569999999
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_340  &
   adams_id = 351  &
   location = -2.7871434876E-002, 83.9999749516, -13.8543616336  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_340  &
   visibility = off  &
   name_visibility = off
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.FMARKER_694  &
   adams_id = 694
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.FMARKER_723  &
   adams_id = 723
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_middle_mid1_mid2  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_middle_mid1_mid2.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652099E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.LINK_35  &
   i_marker = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252  &
   j_marker = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_middle_mid1_mid2  &
   color = RED  &
   visibility = off  &
   name_visibility = off
!
!-------------------------- LINK_middle_mid2_distal ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_middle_mid2_distal  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_middle_mid2_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_358  &
   adams_id = 358  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_358  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_254  &
   adams_id = 254  &
   location = -3.5038375272E-002, 92.9999692444, -13.8471946954  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255  &
   adams_id = 255  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.cm  &
   adams_id = 324  &
   location = -4.0214498892E-002, 99.4999651225, -13.8420185735  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342  &
   adams_id = 342  &
   location = -3.5038375272E-002, 92.9999692444, -13.8471946954  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_343  &
   adams_id = 343  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_347  &
   adams_id = 347  &
   location = -4.6585112578E-002, 107.4999600494, -13.8356479618  &
   orientation = 7.9505852123E-004, 1.5926530848E-003, -1.569999999
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_344  &
   adams_id = 344  &
   location = -4.5390622512E-002, 105.9999610006, -13.8368424515  &
   orientation = -2.3553983219, 1.5696701507, 0.7853980049
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.FMARKER_695  &
   adams_id = 695
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.FMARKER_720  &
   adams_id = 720
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_middle_mid2_distal  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_middle_mid2_distal.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.600665208E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_mid2_distal.LINK_36  &
   i_marker = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_254  &
   j_marker = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_middle_mid2_distal  &
   color = GREEN  &
   visibility = off  &
   name_visibility = off
!
!---------------------------- LINK_ring_prox_mid1 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_ring_prox_mid1  &
   adams_id = 42  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_ring_prox_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_386  &
   adams_id = 386  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_386  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256  &
   adams_id = 256  &
   location = -20.6667072836, 35.4240542139, -13.882293535  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_257  &
   adams_id = 257  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.cm  &
   adams_id = 325  &
   location = -21.5144613904, 41.8685314338, -13.877161624  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_371  &
   adams_id = 371  &
   location = -20.6667072836, 35.4240542139, -13.882293535  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373  &
   adams_id = 373  &
   location = -22.3622154972, 48.3130086537, -13.8720297131  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_382  &
   adams_id = 382  &
   location = -21.5144613904, 41.8685314338, -13.877161624  &
   orientation = 5.8860683434E-004, 1.579049686E-003, -1.439999836
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.FMARKER_696  &
   adams_id = 696
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.FMARKER_735  &
   adams_id = 735
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_ring_prox_mid1  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_ring_prox_mid1.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.600665208E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_prox_mid1.LINK_37  &
   i_marker = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256  &
   j_marker = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_257  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_ring_prox_mid1  &
   color = MAIZE  &
   visibility = off  &
   name_visibility = off
!
!---------------------------- LINK_ring_mid1_mid2 -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_ring_mid1_mid2  &
   adams_id = 44  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_388  &
   adams_id = 388  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_388  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261  &
   adams_id = 261  &
   location = -23.5360288758, 57.2361309582, -13.8649239902  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_262  &
   adams_id = 262  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.cm  &
   adams_id = 326  &
   location = -24.3837829826, 63.6806081781, -13.8597920792  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_375  &
   adams_id = 375  &
   location = -23.5360288758, 57.2361309582, -13.8649239902  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_377  &
   adams_id = 377  &
   location = -25.2315370894, 70.125085398, -13.8546601682  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_383  &
   adams_id = 383  &
   location = -24.9054778176, 67.6464403134, -13.8566339801  &
   orientation = 5.8860683434E-004, 1.579049686E-003, -1.439999836
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.FMARKER_697  &
   adams_id = 697
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.FMARKER_732  &
   adams_id = 732
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_ring_mid1_mid2  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_ring_mid1_mid2.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652091E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.LINK_39  &
   i_marker = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261  &
   j_marker = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_262  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_ring_mid1_mid2  &
   color = CYAN  &
   visibility = off  &
   name_visibility = off
!
!--------------------------- LINK_ring_mid2_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_ring_mid2_distal  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_ring_mid2_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_390  &
   adams_id = 390  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_390  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263  &
   adams_id = 263  &
   location = -26.4053504681, 79.0482077025, -13.8475544453  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_264  &
   adams_id = 264  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.cm  &
   adams_id = 327  &
   location = -27.2531045749, 85.4926849224, -13.8424225344  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_379  &
   adams_id = 379  &
   location = -26.4053504681, 79.0482077025, -13.8475544453  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_381  &
   adams_id = 381  &
   location = -28.1008586817, 91.9371621423, -13.8372906234  &
   orientation = -1.5761056159, 1.4399975897, 6.0534632006E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_384  &
   adams_id = 384  &
   location = -28.2964942448, 93.4243491931, -13.8361063362  &
   orientation = 5.8860683434E-004, 1.579049686E-003, -1.439999836
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.FMARKER_698  &
   adams_id = 698
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.FMARKER_729  &
   adams_id = 729
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_ring_mid2_distal  &
   mass = 9.2314209421E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_ring_mid2_distal.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652097E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_mid2_distal.LINK_40  &
   i_marker = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263  &
   j_marker = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_264  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_ring_mid2_distal  &
   color = MAGENTA  &
   visibility = off  &
   name_visibility = off
!
!--------------------------- LINK_little_prox_mid1 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_little_prox_mid1  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_little_prox_mid1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_418  &
   adams_id = 418  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_418  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265  &
   adams_id = 265  &
   location = -41.313724967, 21.6975070455, -13.3820139406  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_266  &
   adams_id = 266  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.cm  &
   adams_id = 328  &
   location = -42.9897501785, 27.9777072397, -13.3770128479  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_403  &
   adams_id = 403  &
   location = -41.313724967, 21.6975070455, -13.3820139406  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_405  &
   adams_id = 405  &
   location = -44.66577539, 34.257907434, -13.3720117551  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_414  &
   adams_id = 414  &
   location = -42.9897501785, 27.9777072397, -13.3770128479  &
   orientation = 3.8566069081E-004, 1.5387978883E-003, -1.309999684
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.FMARKER_699  &
   adams_id = 699
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.FMARKER_744  &
   adams_id = 744
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_little_prox_mid1  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_little_prox_mid1.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652097E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_little_prox_mid1.LINK_41  &
   i_marker = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265  &
   j_marker = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_266  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_little_prox_mid1  &
   color = RED  &
   visibility = off  &
   name_visibility = off
!
!--------------------------- LINK_little_mid1_mid2 ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_little_mid1_mid2  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_little_mid1_mid2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_420  &
   adams_id = 420  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_420  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267  &
   adams_id = 267  &
   location = -46.8575006665, 42.4704769187, -13.3654718646  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_268  &
   adams_id = 268  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.cm  &
   adams_id = 329  &
   location = -48.5335258779, 48.750677113, -13.3604707719  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_407  &
   adams_id = 407  &
   location = -46.8575006665, 42.4704769187, -13.3654718646  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_409  &
   adams_id = 409  &
   location = -50.2095510894, 55.0308773072, -13.3554696791  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_415  &
   adams_id = 415  &
   location = -48.5335258779, 48.750677113, -13.3604707719  &
   orientation = 3.8566069081E-004, 1.5387978883E-003, -1.309999684
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.FMARKER_700  &
   adams_id = 700
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.FMARKER_741  &
   adams_id = 741
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_little_mid1_mid2  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_little_mid1_mid2.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652094E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_little_mid1_mid2.LINK_42  &
   i_marker = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267  &
   j_marker = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_268  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_little_mid1_mid2  &
   color = GREEN  &
   visibility = off  &
   name_visibility = off
!
!-------------------------- LINK_little_mid2_distal ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_little_mid2_distal  &
   adams_id = 48  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_little_mid2_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_422  &
   adams_id = 422  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_422  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269  &
   adams_id = 269  &
   location = -52.4012763659, 63.243446792, -13.3489297886  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_270  &
   adams_id = 270  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.cm  &
   adams_id = 330  &
   location = -54.0773015774, 69.5236469862, -13.3439286958  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_411  &
   adams_id = 411  &
   location = -52.4012763659, 63.243446792, -13.3489297886  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_413  &
   adams_id = 413  &
   location = -55.7533267889, 75.8038471804, -13.3389276031  &
   orientation = -1.573088324, 1.3099988119, 2.9838918128E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_416  &
   adams_id = 416  &
   location = -54.0773015774, 69.5236469862, -13.3439286958  &
   orientation = 3.8566069081E-004, 1.5387978883E-003, -1.309999684
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.FMARKER_701  &
   adams_id = 701
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.FMARKER_738  &
   adams_id = 738
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_little_mid2_distal  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_little_mid2_distal.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652091E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_little_mid2_distal.LINK_43  &
   i_marker = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269  &
   j_marker = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_270  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_little_mid2_distal  &
   color = MAIZE  &
   visibility = off  &
   name_visibility = off
!
!---------------------------- LINK_thumb_prox_mid -----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_thumb_prox_mid  &
   adams_id = 49  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_thumb_prox_mid
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_476  &
   adams_id = 476  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_476  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271  &
   adams_id = 271  &
   location = 53.2609252083, -4.511520004, -1.6121488466  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_272  &
   adams_id = 272  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.cm  &
   adams_id = 331  &
   location = 59.1519258241, -1.7645021736, -1.6099613222  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_444  &
   adams_id = 444  &
   location = 59.1519258241, -1.7645021736, -1.6099613222  &
   orientation = 2.0364978173, 0.3941070564, -0.1906289843
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_468  &
   adams_id = 468  &
   location = 53.2609252083, -4.511520004, -1.6121488466  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_470  &
   adams_id = 470  &
   location = 65.0429264398, 0.9825156567, -1.6077737979  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.FMARKER_702  &
   adams_id = 702
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.FMARKER_750  &
   adams_id = 750
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_thumb_prox_mid  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_thumb_prox_mid.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652099E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_thumb_prox_mid.LINK_44  &
   i_marker = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271  &
   j_marker = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_272  &
   width = 1.3  &
   depth = 0.65
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.LINK_thumb_prox_mid.LINK_44  &
   visibility = on
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_thumb_prox_mid  &
   color = CYAN  &
   visibility = on  &
   name_visibility = off
!
!--------------------------- LINK_thumb_mid_distal ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.LINK_thumb_mid_distal  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.LINK_thumb_mid_distal
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_478  &
   adams_id = 478  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker attributes  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_478  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273  &
   adams_id = 273  &
   location = 73.1996965231, 4.7860788064, -1.604744918  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_274  &
   adams_id = 274  &
   location = 84.9816977546, 10.280114467, -1.6003698692  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.cm  &
   adams_id = 332  &
   location = 79.0906971389, 7.5330966367, -1.6025573936  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_443  &
   adams_id = 443  &
   location = 82.7238830654, 9.2064974066, -1.6098108361  &
   orientation = 2.0364978173, 0.3941070564, -0.1906289843
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_472  &
   adams_id = 472  &
   location = 76.8249276713, 6.4765513173, -1.6033987491  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
marker create  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_474  &
   adams_id = 474  &
   location = 88.6069289028, 11.970586978, -1.5990237004  &
   orientation = 0.3924832608, 0.1761667387, -1.1695001685
!
! ****** Floating Markers for current part ******
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.FMARKER_703  &
   adams_id = 703
!
floating_marker create  &
   floating_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.FMARKER_747  &
   adams_id = 747
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.LINK_thumb_mid_distal  &
   mass = 9.231420942E-005  &
   center_of_mass_marker = .PISAIIT_HAND.LINK_thumb_mid_distal.cm  &
   ixx = 1.5235521742E-003  &
   iyy = 1.514045981E-003  &
   izz = 1.6006652085E-005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .PISAIIT_HAND.LINK_thumb_mid_distal.LINK_45  &
   i_marker = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273  &
   j_marker = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_274  &
   width = 1.3  &
   depth = 0.65
!
part attributes  &
   part_name = .PISAIIT_HAND.LINK_thumb_mid_distal  &
   color = MAGENTA  &
   visibility = on
!
!----------------------------------- table ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.table  &
   adams_id = 56  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.table
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.table.MARKER_842  &
   adams_id = 842  &
   location = -9.948, 59.615, 40.219  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.table.MARKER_554  &
   adams_id = 554  &
   location = -159.8252581157, 10.2429494042, 111.340526104  &
   orientation = -1.3566853125, 0.4772167934, 1.9953851769E-002
!
marker create  &
   marker_name = .PISAIIT_HAND.table.cm  &
   adams_id = 563  &
   location = 26.4336586252, 78.6202659366, 154.2492492072  &
   orientation = -1.3566853125, 0.4772167934, -1.550842475
!
marker create  &
   marker_name = .PISAIIT_HAND.table.MARKER_566  &
   adams_id = 566  &
   location = -159.8252581157, 10.2429494042, 111.340526104  &
   orientation = -1.3566853125, 0.4772167934, 1.9953851769E-002
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.table  &
   material_type = .PISAIIT_HAND.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .PISAIIT_HAND.table.BOX_204  &
   adams_id = 204  &
   corner_marker = .PISAIIT_HAND.table.MARKER_554  &
   diag_corner_coords = 260.0, -60.0, 306.0
!
part attributes  &
   part_name = .PISAIIT_HAND.table  &
   color = RED  &
   visibility = on  &
   name_visibility = off
!
!----------------------------------- object -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.object  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.object
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_813  &
   adams_id = 813  &
   location = 0.0, 0.0, 0.0  &
   orientation = -0.8274586316, 0.3527137882, 2.8341194374
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_814  &
   adams_id = 814  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.1095104989, 0.1445417408, 1.5613998645
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_move  &
   adams_id = 815  &
   location = 32.748, -4.969, 227.443  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_653  &
   adams_id = 653  &
   location = 0.0, 0.0, 0.0  &
   orientation = -2.9183157018, -1.7724293687E-002, 0.477298026
!
marker attributes  &
   marker_name = .PISAIIT_HAND.object.MARKER_653  &
   visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.object.cm  &
   adams_id = 675  &
   location = 0.5777150416, 75.2783201477, 68.9995478673  &
   orientation = 0.827450377, 1.6488257598E-002, -6.8759020207E-003
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_687  &
   adams_id = 687  &
   location = 1.828325, 61.505931, 117.990773  &
   orientation = -2.9183157018, -1.7724293687E-002, 0.477298026
!
marker attributes  &
   marker_name = .PISAIIT_HAND.object.MARKER_687  &
   visibility = off
!
marker create  &
   marker_name = .PISAIIT_HAND.object.MARKER_777  &
   adams_id = 777  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.object  &
   density = 5.48E-007
!
! ****** Graphics for current part ******
!
geometry create shape shell  &
   shell_name = .PISAIIT_HAND.object.object_geom  &
   reference_marker = .PISAIIT_HAND.object.MARKER_687  &
   file_name = "TAZZA.shl"  &
   wireframe_only = no
!
part attributes  &
   part_name = .PISAIIT_HAND.object  &
   color = GREEN  &
   visibility = on  &
   name_visibility = off
!
!---------------------------------- PART_63 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part create rigid_body name_and_position  &
   part_name = .PISAIIT_HAND.PART_63  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.PART_63
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PISAIIT_HAND.PART_63.cm  &
   adams_id = 841  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.PART_63  &
   material_type = .PISAIIT_HAND.steel
!
part attributes  &
   part_name = .PISAIIT_HAND.PART_63  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_palm  &
   adams_id = 20  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_prox.PHALANX_thumb_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_thumb_palm  &
   active = off  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_index_distal  &
   adams_id = 21  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_distal.PHALANX_index_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_index_distal  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_index_mid1  &
   adams_id = 22  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_mid2.PHALANX_index_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_index_mid1  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_index_mid2  &
   adams_id = 23  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_mid2.PHALANX_index_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_index_mid2  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_index_prox  &
   adams_id = 24  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_prox.PHALANX_index_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_index_prox  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_little_distal  &
   adams_id = 25  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_distal.PHALANX_little_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_little_distal  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_little_mid1  &
   adams_id = 26  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_mid1.PHALANX_little_mid1_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_little_mid1  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_little_mid2  &
   adams_id = 27  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_mid2.PHALANX_little_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_little_mid2  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_little_prox  &
   adams_id = 28  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_prox.PHALANX_little_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_little_prox  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_distal  &
   adams_id = 29  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_distal.PHALANX_middle_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_middle_distal  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_mid1  &
   adams_id = 30  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_mid1.PHALANX_middle_mid1_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_middle_mid1  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_mid2  &
   adams_id = 31  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_mid2.PHALANX_middle_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_middle_mid2  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_prox  &
   adams_id = 32  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_prox.PHALANX_middle_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_middle_prox  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_distal  &
   adams_id = 33  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_distal.PHALANX_ring_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_ring_distal  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_mid1  &
   adams_id = 34  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_mid2.PHALANX_ring_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_ring_mid1  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_mid2  &
   adams_id = 35  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_mid2.PHALANX_ring_mid2_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_ring_mid2  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_prox  &
   adams_id = 36  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_prox.PHALANX_ring_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_ring_prox  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_distal  &
   adams_id = 37  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_thumb_distal  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_mid  &
   adams_id = 38  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_mid.PHALANX_thumb_mid_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_thumb_mid  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_prox  &
   adams_id = 39  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_prox.PHALANX_thumb_prox_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_thumb_prox  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_palm  &
   adams_id = 40  &
   i_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   j_geometry_name = .PISAIIT_HAND.object.object_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.9  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_palm  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_obj_table  &
   adams_id = 41  &
   i_geometry_name = .PISAIIT_HAND.object.object_geom  &
   j_geometry_name = .PISAIIT_HAND.table.BOX_204  &
   stiffness = 1000.0  &
   damping = 1.0  &
   exponent = 1.01  &
   dmax = 1.0E-008  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_obj_table  &
   visibility = off  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_42  &
   adams_id = 42  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_distal.PHALANX_little_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_42  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_43  &
   adams_id = 43  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_distal.PHALANX_ring_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_43  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_44  &
   adams_id = 44  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_distal.PHALANX_middle_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_44  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_45  &
   adams_id = 45  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_distal.PHALANX_index_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_45  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_46  &
   adams_id = 46  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.palm.palm_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_46  &
   visibility = on
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_47  &
   adams_id = 47  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_index_distal.PHALANX_index_distal_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .PISAIIT_HAND.CONTACT_47  &
   visibility = on  &
   name_visibility = off
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_49  &
   adams_id = 49  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_middle_distal.PHALANX_middle_distal_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_50  &
   adams_id = 50  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_thumb_distal.PHALANX_thumb_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_ring_distal.PHALANX_ring_distal_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_55  &
   adams_id = 55  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_index_distal.PHALANX_index_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_index_mid1.PHALANX_index_mid1_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_56  &
   adams_id = 56  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_little_distal.PHALANX_little_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_little_mid1.PHALANX_little_mid1_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_57  &
   adams_id = 57  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_middle_distal.PHALANX_middle_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_middle_mid1.PHALANX_middle_mid1_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
contact create  &
   contact_name = .PISAIIT_HAND.CONTACT_58  &
   adams_id = 58  &
   i_geometry_name = .PISAIIT_HAND.PHALANX_ring_distal.PHALANX_ring_distal_geom  &
   j_geometry_name = .PISAIIT_HAND.PHALANX_ring_mid1.PHALANX_ring_mid1_geom  &
   stiffness = 1.0E+005  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.0  &
   mu_dynamic = 0.4  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_prox  &
   adams_id = 6  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_285  &
   j_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_286
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_prox  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_mid1_1  &
   adams_id = 7  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287  &
   j_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_288
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_mid1_1  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_mid1_2  &
   adams_id = 8  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289  &
   j_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_290
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_mid1_2  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_mid2_1  &
   adams_id = 9  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291  &
   j_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_292
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_mid2_1  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_mid2_2  &
   adams_id = 10  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293  &
   j_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_294
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_mid2_2  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_distal  &
   adams_id = 11  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_295  &
   j_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_296
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_distal  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_prox  &
   adams_id = 14  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_prox  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_mid1_1  &
   adams_id = 15  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_335  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_336
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_mid1_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_mid1_2  &
   adams_id = 16  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_mid1_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_mid2_1  &
   adams_id = 17  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_339  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_340
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_mid2_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_mid2_2  &
   adams_id = 18  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_mid2_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_middle_distal  &
   adams_id = 19  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_343  &
   j_marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_344
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_distal  &
   visibility = on  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .PISAIIT_HAND.JOINT_middle_palm  &
   adams_id = 20  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_368  &
   j_marker_name = .PISAIIT_HAND.palm.MARKER_369
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_middle_palm  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_prox  &
   adams_id = 21  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_371
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_prox  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_mid1_1  &
   adams_id = 22  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_372  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_mid1_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_mid1_2  &
   adams_id = 23  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_375
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_mid1_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_mid2_1  &
   adams_id = 24  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_377
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_mid2_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_mid2_2  &
   adams_id = 25  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_379
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_mid2_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_distal  &
   adams_id = 26  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_380  &
   j_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_381
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_distal  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_prox  &
   adams_id = 28  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_402  &
   j_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_403
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_prox  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_mid1_1  &
   adams_id = 29  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404  &
   j_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_405
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_mid1_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_mid1_2  &
   adams_id = 30  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406  &
   j_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_407
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_mid1_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_mid2_1  &
   adams_id = 31  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408  &
   j_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_409
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_mid2_1  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_mid2_2  &
   adams_id = 32  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410  &
   j_marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_411
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_mid2_2  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_distal  &
   adams_id = 33  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_412  &
   j_marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_413
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_distal  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_thumb_prox  &
   adams_id = 40  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467  &
   j_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_468
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_thumb_prox  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_thumb_mid_1  &
   adams_id = 41  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469  &
   j_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_470
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_thumb_mid_1  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_thumb_mid_2  &
   adams_id = 42  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471  &
   j_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_472
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_thumb_mid_2  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_thumb_distal  &
   adams_id = 43  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_473  &
   j_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_474
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_thumb_distal  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_index_palm  &
   adams_id = 44  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_485  &
   j_marker_name = .PISAIIT_HAND.palm.MARKER_486
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_index_palm  &
   visibility = on
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_ring_palm  &
   adams_id = 45  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_487  &
   j_marker_name = .PISAIIT_HAND.palm.MARKER_488
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_ring_palm  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_little_palm  &
   adams_id = 46  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_489  &
   j_marker_name = .PISAIIT_HAND.palm.MARKER_490
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_little_palm  &
   visibility = on  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .PISAIIT_HAND.JOINT_thumb_palm  &
   adams_id = 47  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491  &
   j_marker_name = .PISAIIT_HAND.palm.MARKER_492
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_thumb_palm  &
   visibility = on
!
constraint create joint fixed  &
   joint_name = .PISAIIT_HAND.JOINT_palm_ground  &
   adams_id = 50  &
   i_marker_name = .PISAIIT_HAND.palm.MARKER_550  &
   j_marker_name = .PISAIIT_HAND.ground.MARKER_551
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_palm_ground  &
   visibility = on  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .PISAIIT_HAND.JOINT_table_ground  &
   adams_id = 51  &
   i_marker_name = .PISAIIT_HAND.table.MARKER_566  &
   j_marker_name = .PISAIIT_HAND.ground.MARKER_567
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.JOINT_table_ground  &
   visibility = on  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like field  &
   field_name = .PISAIIT_HAND.wrist  &
   adams_id = 1  &
   i_marker_name = .PISAIIT_HAND.palm.MARKER_548  &
   j_marker_name = .PISAIIT_HAND.ground.MARKER_549  &
   translation_at_preload = 0.0, 0.0, 0.0  &
   rotation_at_preload = 0.0, 0.0, 0.0  &
   formulation = linear  &
   length_tolerance = 1.0E-005  &
   damping_ratio = 10.0  &
   stiffness_matrix =  &
      100.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 100.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 100.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 5729.5779513082, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 5729.5779513082, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 5729.5779513082  &
   force_preload = 0.0, 0.0, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = .PISAIIT_HAND.wrist  &
   active = off  &
   name_visibility = off
!
force create direct single_component_force  &
   single_component_force_name = .PISAIIT_HAND.SFORCE_19  &
   adams_id = 19  &
   type_of_freedom = translational  &
   i_marker_name = .PISAIIT_HAND.object.MARKER_777  &
   j_marker_name = .PISAIIT_HAND.ground.MARKER_778  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.SFORCE_19  &
   active = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_prox  &
   adams_id = 1  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.FMARKER_690  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_index_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_mid  &
   adams_id = 2  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.FMARKER_691  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_index_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_distal  &
   adams_id = 22  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_713  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.FMARKER_714  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_index_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_prox  &
   adams_id = 4  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.FMARKER_693  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_middle_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_mid  &
   adams_id = 5  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.FMARKER_694  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_middle_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_distal  &
   adams_id = 6  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365  &
   j_floating_marker_name =   &
                            .PISAIIT_HAND.LINK_middle_mid2_distal.FMARKER_695  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_middle_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_prox  &
   adams_id = 7  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.FMARKER_696  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_ring_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_mid  &
   adams_id = 8  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.FMARKER_697  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_ring_mid  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_distal  &
   adams_id = 9  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.FMARKER_698  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_ring_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_prox  &
   adams_id = 10  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.FMARKER_699  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_little_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_mid  &
   adams_id = 11  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.FMARKER_700  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_little_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_distal  &
   adams_id = 12  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_429  &
   j_floating_marker_name =   &
                            .PISAIIT_HAND.LINK_little_mid2_distal.FMARKER_701  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_little_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_prox  &
   adams_id = 13  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.FMARKER_702  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_thumb_prox  &
   visibility = on  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_distal  &
   adams_id = 14  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.FMARKER_703  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_thumb_distal  &
   visibility = on  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_palm  &
   adams_id = 15  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_501  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_503  &
   ref_marker_name = .PISAIIT_HAND.palm.MARKER_502  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_thumb_palm  &
   visibility = on  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_palm  &
   adams_id = 16  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_504  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_506  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_index_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_palm  &
   adams_id = 17  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_507  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_509  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_ring_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_palm  &
   adams_id = 18  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_510  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_512  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_little_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_distal  &
   adams_id = 19  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_704  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.FMARKER_755  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_index_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_prox  &
   adams_id = 23  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_716  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.FMARKER_757  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_index_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_mid  &
   adams_id = 21  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_710  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.FMARKER_756  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_index_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_distal  &
   adams_id = 24  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_719  &
   j_floating_marker_name =   &
                            .PISAIIT_HAND.LINK_middle_mid2_distal.FMARKER_720  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_middle_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_mid  &
   adams_id = 25  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_722  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.FMARKER_723  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_middle_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_prox  &
   adams_id = 26  &
   i_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_725  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.FMARKER_726  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_middle_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_distal  &
   adams_id = 27  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_728  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.FMARKER_729  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_ring_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_mid  &
   adams_id = 28  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_731  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.FMARKER_732  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_ring_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_prox  &
   adams_id = 29  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_734  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.FMARKER_735  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_ring_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_distal  &
   adams_id = 30  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_737  &
   j_floating_marker_name =   &
                            .PISAIIT_HAND.LINK_little_mid2_distal.FMARKER_738  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_little_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_mid  &
   adams_id = 31  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_740  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.FMARKER_741  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_little_mid  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_prox  &
   adams_id = 32  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_743  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.FMARKER_744  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_little_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_distal  &
   adams_id = 33  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_746  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.FMARKER_747  &
   ref_marker_name =   &
                     .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_distal  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_prox  &
   adams_id = 34  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_749  &
   j_floating_marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.FMARKER_750  &
   ref_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_prox  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_palm  &
   adams_id = 35  &
   i_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_764  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_766  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_index  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_index_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_palm  &
   adams_id = 36  &
   i_marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_767  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_768  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_ring  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_ring_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_palm  &
   adams_id = 37  &
   i_marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_770  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_771  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_palm_little  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_little_palm  &
   visibility = off  &
   name_visibility = off
!
force create direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_palm_2  &
   adams_id = 38  &
   i_marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_773  &
   j_floating_marker_name = .PISAIIT_HAND.palm.FMARKER_774  &
   ref_marker_name = .PISAIIT_HAND.palm.marker_12  &
   x_torque_function = ""  &
   y_torque_function = ""  &
   z_torque_function = ""
!
force attributes  &
   force_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_palm_2  &
   visibility = off  &
   name_visibility = off
!
!----------------------------------- Gears ------------------------------------!
!
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_index_distal  &
   adams_id = 1  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_index_prox,  &
      .PISAIIT_HAND.JOINT_index_mid1_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_297
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_index_distal  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_index_mid  &
   adams_id = 2  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_index_mid1_2,  &
      .PISAIIT_HAND.JOINT_index_mid2_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_298
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_index_mid  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_index_prox  &
   adams_id = 3  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_index_mid2_2,  &
      .PISAIIT_HAND.JOINT_index_distal  &
   common_velocity_marker = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_299
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_index_prox  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_middle_prox  &
   adams_id = 4  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_middle_prox,  &
      .PISAIIT_HAND.JOINT_middle_mid1_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_middle_prox  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_middle_mid  &
   adams_id = 5  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_middle_mid1_2,  &
      .PISAIIT_HAND.JOINT_middle_mid2_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_middle_mid  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_middle_distal  &
   adams_id = 6  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_middle_mid2_2,  &
      .PISAIIT_HAND.JOINT_middle_distal  &
   common_velocity_marker = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_347
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_middle_distal  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_ring_prox  &
   adams_id = 7  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_ring_prox,  &
      .PISAIIT_HAND.JOINT_ring_mid1_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_382
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_ring_prox  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_ring_mid  &
   adams_id = 8  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_ring_mid1_2,  &
      .PISAIIT_HAND.JOINT_ring_mid2_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_383
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_ring_mid  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_ring_distal  &
   adams_id = 9  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_ring_mid2_2,  &
      .PISAIIT_HAND.JOINT_ring_distal  &
   common_velocity_marker = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_384
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_ring_distal  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_little_prox  &
   adams_id = 10  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_little_prox,  &
      .PISAIIT_HAND.JOINT_little_mid1_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_414
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_little_prox  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_little_mid  &
   adams_id = 11  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_little_mid1_2,  &
      .PISAIIT_HAND.JOINT_little_mid2_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_415
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_little_mid  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_little_distal  &
   adams_id = 12  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_little_mid2_2,  &
      .PISAIIT_HAND.JOINT_little_distal  &
   common_velocity_marker = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_416
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_little_distal  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_thumb_prox  &
   adams_id = 13  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_thumb_prox,  &
      .PISAIIT_HAND.JOINT_thumb_mid_1  &
   common_velocity_marker = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_444
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_thumb_prox  &
   visibility = off  &
   name_visibility = off
!
constraint create complex_joint gear  &
   gear_name = .PISAIIT_HAND.GEAR_thumb_distal  &
   adams_id = 14  &
   joint_name =  &
      .PISAIIT_HAND.JOINT_thumb_mid_2,  &
      .PISAIIT_HAND.JOINT_thumb_distal  &
   common_velocity_marker = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_443
!
constraint attributes  &
   constraint_name = .PISAIIT_HAND.GEAR_thumb_distal  &
   visibility = off  &
   name_visibility = off
!
!---------------------------------- Sensors -----------------------------------!
!
!
executive_control create sensor  &
   sensor_name = .PISAIIT_HAND.SENSOR_1  &
   adams_id = 1  &
   compare = ge  &
   value = 0.1  &
   error = 0.001  &
   codgen = off  &
   halt = off  &
   print = off  &
   restart = off  &
   return = on  &
   yydump = off  &
   function = ""
!
!---------------------------------- Requests ----------------------------------!
!
!
output_control create request  &
   request_name = .PISAIIT_HAND.req1  &
   adams_id = 1  &
   i_marker_name = .PISAIIT_HAND.ground.MARKER_PARAM  &
   j_marker_name = .PISAIIT_HAND.object.MARKER_653  &
   r_marker_name = .PISAIIT_HAND.ground.MARKER_PARAM  &
   output_type = velocity
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_index  &
   adams_id = 22  &
   comment = "U2 q.ind.DISTAL U3 q.MID1_1 U4 q.MID1_2 U6 q.MID2_1 U7 q.MID2_2 U8 q.PROX"  &
   title = "q_index"  &
   component_names = "q_index"  &
   results_name = "q_index"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_middle  &
   adams_id = 2  &
   comment = "U2 q.mid.DISTAL U3 q.MID1_1 U4 q.MID1_2 U6 q.MID2_1 U7 q.MID2_2 U8 q.PROX"  &
   title = "q_middle"  &
   component_names = "q_middle"  &
   results_name = "q_middle"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_ring  &
   adams_id = 3  &
   comment = "U2 q.ring.DISTAL U3 q.MID1_1 U4 q.MID1_2 U6 q.MID2_1 U7 q.MID2_2 U8 q.PROX"  &
   title = "q_ring"  &
   component_names = "q_ring"  &
   results_name = "q_ring"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_little  &
   adams_id = 4  &
   comment = "U2 q.lit.DISTAL U3 q.MID1_1 U4 q.MID1_2 U6 q.MID2_1 U7 q.MID2_2 U8 q.PROX"  &
   title = "q_little"  &
   component_names = "q_little"  &
   results_name = "q_little"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_abd  &
   adams_id = 23  &
   comment = "U2 THUMB.adb U3 INDEX.adb U4 RING.adb U6 LITTLE.adb"  &
   title = "q_abd"  &
   component_names = "q_abd"  &
   results_name = "q_abd"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_q_thumb  &
   adams_id = 5  &
   comment = "U2 q.THUMB_DISTAL U3 q_thumb_mid1 U4 q_thumb_mid2 U6 q_thumb_proX U7 q_ring_mid2_2 U8 q_ring_prox  x"  &
   title = "q_thumb"  &
   component_names = "q_thumb"  &
   results_name = "q_thumb"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_index  &
   adams_id = 6  &
   comment = " U2 t.ind.DISTAL U3 t.MID1_1 U4 t.MID1_2 U6 t.MID2_1 U7 t.MID2_2 U8 t.PROX"  &
   title = "tau_index"  &
   component_names = "tau_index"  &
   results_name = "tau_index"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_little  &
   adams_id = 7  &
   comment = " U2 t.lit.DISTAL U3 t.MID1_1 U4 t.MID1_2 U6 t.MID2_1 U7 t.MID2_2 U8 t.PROX"  &
   title = "tau_little"  &
   component_names = "tau_little"  &
   results_name = "tau_little"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_middle  &
   adams_id = 8  &
   comment = " U2 t.mid.DISTAL U3 t.MID1_1 U4 t.MID1_2 U6 t.MID2_1 U7 t.MID2_2 U8 t.PROX"  &
   title = "tau_middle"  &
   component_names = "tau_middle"  &
   results_name = "tau_middle"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_ring  &
   adams_id = 9  &
   comment = " U2 t.ring.DISTAL U3 t.MID1_1 U4 t.MID1_2 U6 t.MID2_1 U7 t.MID2_2 U8 t.PROX"  &
   title = "tau_ring"  &
   component_names = "tau_ring"  &
   results_name = "tau_ring"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_thumb  &
   adams_id = 10  &
   comment = "U2 t.thumb.DISTAL U3 t.MID1 U4 t.MID2 U6 t.THUMB_PROX U7 q.RING_MID2_2 U8 q.RING_PROX"  &
   title = "tau_thumb"  &
   component_names = "tau_thumb"  &
   results_name = "tau_thumb"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_tau_abd  &
   adams_id = 11  &
   comment = "U2 t.THUMB_PALM U3 t.INDEX_PALM U4 t.RING_PALM U6 t.LITTLE_PALM"  &
   title = "tau_abd"  &
   component_names = "tau_abd"  &
   results_name = "tau_abd"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_index_1  &
   adams_id = 24  &
   comment = "U2 c.ind1.DISTAL_X U3 c.DISTAL_Y U4 c.DISTAL_Z U6 c.MID1_X U7 c.MID_Y U8 c.MID_Z"  &
   title = "contact_index_1"  &
   component_names = "contact_index_1"  &
   results_name = "contact_index_1"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_ring_1  &
   adams_id = 16  &
   comment = "U2 c.ring1.DISTAL_X U3 c.DISTAL_Y U4 c.DISTAL_Z U6 c.MID1_X U7 c.MID1_Y U8 c.MId1_Z"  &
   title = "contact_ring_1"  &
   component_names = "contact_ring_1"  &
   results_name = "contact_ring_1"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_index_2  &
   adams_id = 13  &
   comment = "U2 c.ind2.MID2_X U3 c.MID2_Y U4 c.MID2_Z U6 c.PROX_X U7 c.PROX_Y U8 c.PROX_Z"  &
   title = "contact_index_2"  &
   component_names = "contact_index_2"  &
   results_name = "contact_index_2"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_middle_1  &
   adams_id = 14  &
   comment = "U2 c.mid1.DISTAL_X U3 c.DISTAL_Y U4 c.DISTAL_Z U6 c.MID1_X U7 c.MID1_Y U8 c.MId1_Z"  &
   title = "contact_middle_1"  &
   component_names = "contact_middle_1"  &
   results_name = "contact_middle_1"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_middle_2  &
   adams_id = 15  &
   comment = "U2 c.MID2_X U3 c.MID2_Y U4 c.MID2_Z U6 c.PROX_X U7 c.PROX_Y U8 c.PROX_Z"  &
   title = "contact_middle_2"  &
   component_names = "contact_middle_2"  &
   results_name = "contact_middle_2"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_ring_2  &
   adams_id = 17  &
   comment = "U2 c.ring2.MID2_X U3 c.MID2_Y U4 c.MID2_Z U6 c.PROX_X U7 c.PROX_Y U8 c.PROX_Z"  &
   title = "contact_ring_2"  &
   component_names = "contact_ring_2"  &
   results_name = "contact_ring_2"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_little_1  &
   adams_id = 18  &
   comment = "U2 c.lit1.DISTAL_X U3 c.DISTAL_Y U4 c.DISTAL_Z U6 c.MID1_X U7 c.MID1_Y U8 c.MId1_Z"  &
   title = "contact_little_1"  &
   component_names = "contact_little_1"  &
   results_name = "contact_little_1contact_little_1"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_little_2  &
   adams_id = 19  &
   comment = "U2 c.lit2.MID2_X U3 c.MID2_Y U4 c.MID2_Z U6 c.PROX_X U7 c.PROX_Y U8 c.PROX_Z"  &
   title = "contact_little_2"  &
   component_names = "contact_little_2"  &
   results_name = "contact_little_2"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_thumb_1  &
   adams_id = 20  &
   comment = "U2 c.thumb1.DISTAL_X U3 c.DISTAL_Y U4 c.DISTAL_Z U6 c.MID_X U7 c.MID_Y U8 c.MId_Z"  &
   title = "contact_thumb_1"  &
   component_names = "contact_thumb_1"  &
   results_name = "contact_thumb_1"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
output_control create request  &
   request_name = .PISAIIT_HAND.req_contact_thumb_2  &
   adams_id = 21  &
   comment = "U2 C-THUMB_PROX U3 C.THUMB_PROX U4 C.THUMB_PROX U6 C.THUMB_MID U7 C.THUMB_MID U8 C.THUMB_MID"  &
   title = "contact_thumb_2"  &
   component_names = "contact_thumb_2"  &
   results_name = "contact_thumb_2"  &
   f2 = ""  &
   f3 = ""  &
   f4 = ""  &
   f6 = ""  &
   f7 = ""  &
   f8 = ""
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .PISAIIT_HAND.stiffness  &
   units = "stiffness"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 250.0
!
variable create  &
   variable_name = .PISAIIT_HAND.preload  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.6
!
variable create  &
   variable_name = .PISAIIT_HAND.stiffness_abd  &
   units = "stiffness"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .PISAIIT_HAND.stiffness_abd_thumb  &
   units = "stiffness"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_abd  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_abd_thumb  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_abd_ring  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 200.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_clos_thumb  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 200.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_clos_thumb2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 200.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_prox_phalanx  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 200.0
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .PISAIIT_HAND.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=3.0 number_of_steps=300 model_name=.PISAIIT_HAND"
!
simulation script create  &
   sim_script_name = .PISAIIT_HAND.SIM_SCRIPT_1  &
   solver_commands = "! Insert ACF commands here:", "", "",  &
                     "SIMULATE/STATIC", "",  &
                     "SIMULATE/DYNAMIC, END=40.0, STEPS=500", "",  &
                     "ACTIVATE/SFORCE, ID=20", "",  &
                     "SIMULATE/DYNAMIC, END=10.0, STEPS=500"
!
simulation script create  &
   sim_script_name = .PISAIIT_HAND.SIM_SCRIPT_2  &
   solver_commands = "! Insert ACF commands here:", "",  &
                     "SIMULATE/DYNAMIC, DURATION=10, STEPS=1500"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_prox  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_prox  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_mid  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_mid  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_distal  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_distal  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_prox  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_prox  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_mid  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_mid  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_distal  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_distal  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_palm  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_palm  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm  &
   name_visibility = off
!
ude create instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_palm  &
   definition_name = .MDI.Forces.torsion_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_palm  &
   name_visibility = off
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_index_mid1.MARKER_300)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_index_prox_mid1.MARKER_301)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_prox.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_index_mid2.MARKER_302)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_303)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_mid.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_index_distal.MARKER_304)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_index_mid2_distal.MARKER_305)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_distal.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_middle_mid1.MARKER_353)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_354)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_prox_phalanx)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_middle_mid2.MARKER_355)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_356)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_middle_distal.MARKER_357)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_358)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_ring_mid1.MARKER_385)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_386)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_prox_phalanx)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_ring_mid2.MARKER_387)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_388)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_ring_distal.MARKER_389)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_390)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_little_mid1.MARKER_417)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_little_prox_mid1.MARKER_418)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_prox_phalanx)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_prox.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_little_mid2.MARKER_419)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_420)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_mid.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_little_distal.MARKER_421)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_little_mid2_distal.MARKER_422)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_distal.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_thumb_mid.MARKER_475)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_476)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_clos_thumb2)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_thumb_distal.MARKER_477)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.j_marker  &
   object_value = (.PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_478)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_clos_thumb)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.j_marker  &
   object_value = (.PISAIIT_HAND.palm.MARKER_494)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness_abd_thumb)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_abd_thumb)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_index_prox.MARKER_495)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.j_marker  &
   object_value = (.PISAIIT_HAND.palm.MARKER_496)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness_abd)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_abd)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_index_palm.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_ring_prox.MARKER_497)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.j_marker  &
   object_value = (.PISAIIT_HAND.palm.MARKER_498)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness_abd)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_abd_ring)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.i_marker  &
   object_value = (.PISAIIT_HAND.PHALANX_little_prox.MARKER_499)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.j_marker  &
   object_value = (.PISAIIT_HAND.palm.MARKER_500)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.stiffness_coefficient  &
   real_value = (.PISAIIT_HAND.stiffness_abd)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.damping_coefficient  &
   real_value = (.PISAIIT_HAND.damping_abd)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.free_angle_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.free_angle  &
   real_value = 0.0
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.preload  &
   real_value = (.PISAIIT_HAND.preload)
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .PISAIIT_HAND.TORSION_SPRING_little_palm.j_dynamic_visibility  &
   string_value = "off"
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_palm
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_19_force_graphic_1  &
   adams_id = 344  &
   force_element_name = .PISAIIT_HAND.VTORQUE_elastico_index_distal  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_704
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_35_force_graphic_1  &
   adams_id = 345  &
   force_element_name = .PISAIIT_HAND.VTORQUE_elastico_index_palm  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_764
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.SFORCE_19_force_graphic_1  &
   adams_id = 352  &
   force_element_name = .PISAIIT_HAND.SFORCE_19  &
   applied_at_marker_name = .PISAIIT_HAND.object.MARKER_777
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.SFORCE_19_force_graphic_1  &
   active = off
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_1_force_graphic_1  &
   adams_id = 45  &
   force_element_name = .PISAIIT_HAND.VTORQUE_index_prox  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_2_force_graphic_1  &
   adams_id = 46  &
   force_element_name = .PISAIIT_HAND.VTORQUE_index_mid  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_4_force_graphic_1  &
   adams_id = 54  &
   force_element_name = .PISAIIT_HAND.VTORQUE_middle_prox  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_5_force_graphic_1  &
   adams_id = 55  &
   force_element_name = .PISAIIT_HAND.VTORQUE_middle_mid  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_6_force_graphic_1  &
   adams_id = 56  &
   force_element_name = .PISAIIT_HAND.VTORQUE_middle_distal  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_7_force_graphic_1  &
   adams_id = 63  &
   force_element_name = .PISAIIT_HAND.VTORQUE_ring_prox  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_8_force_graphic_1  &
   adams_id = 64  &
   force_element_name = .PISAIIT_HAND.VTORQUE_ring_mid  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_9_force_graphic_1  &
   adams_id = 65  &
   force_element_name = .PISAIIT_HAND.VTORQUE_ring_distal  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_10_force_graphic_1  &
   adams_id = 72  &
   force_element_name = .PISAIIT_HAND.VTORQUE_little_prox  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_11_force_graphic_1  &
   adams_id = 73  &
   force_element_name = .PISAIIT_HAND.VTORQUE_little_mid  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_12_force_graphic_1  &
   adams_id = 74  &
   force_element_name = .PISAIIT_HAND.VTORQUE_little_distal  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_429
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_13_force_graphic_1  &
   adams_id = 79  &
   force_element_name = .PISAIIT_HAND.VTORQUE_thumb_prox  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_14_force_graphic_1  &
   adams_id = 80  &
   force_element_name = .PISAIIT_HAND.VTORQUE_thumb_distal  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_15_force_graphic_1  &
   adams_id = 89  &
   force_element_name = .PISAIIT_HAND.VTORQUE_thumb_palm  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_501
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_16_force_graphic_1  &
   adams_id = 90  &
   force_element_name = .PISAIIT_HAND.VTORQUE_index_palm  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_504
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_17_force_graphic_1  &
   adams_id = 91  &
   force_element_name = .PISAIIT_HAND.VTORQUE_ring_palm  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_507
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_18_force_graphic_1  &
   adams_id = 92  &
   force_element_name = .PISAIIT_HAND.VTORQUE_little_palm  &
   applied_at_marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_510
!
geometry create shape force  &
   force_name = .PISAIIT_HAND.FIELD_1_force_graphic_1  &
   adams_id = 198  &
   force_element_name = .PISAIIT_HAND.wrist  &
   applied_at_marker_name = .PISAIIT_HAND.palm.MARKER_548
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.FIELD_1_force_graphic_1  &
   active = off
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_140  &
   adams_id = 140  &
   contact_element_name = .PISAIIT_HAND.CONTACT_thumb_palm  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_140  &
   active = off  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_209  &
   adams_id = 209  &
   contact_element_name = .PISAIIT_HAND.CONTACT_index_distal  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_209  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_210  &
   adams_id = 210  &
   contact_element_name = .PISAIIT_HAND.CONTACT_index_mid1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_210  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_211  &
   adams_id = 211  &
   contact_element_name = .PISAIIT_HAND.CONTACT_index_mid2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_211  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_212  &
   adams_id = 212  &
   contact_element_name = .PISAIIT_HAND.CONTACT_index_prox  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_212  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_213  &
   adams_id = 213  &
   contact_element_name = .PISAIIT_HAND.CONTACT_little_distal  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_213  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_214  &
   adams_id = 214  &
   contact_element_name = .PISAIIT_HAND.CONTACT_little_mid1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_214  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_215  &
   adams_id = 215  &
   contact_element_name = .PISAIIT_HAND.CONTACT_little_mid2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_215  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_216  &
   adams_id = 216  &
   contact_element_name = .PISAIIT_HAND.CONTACT_little_prox  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_216  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_217  &
   adams_id = 217  &
   contact_element_name = .PISAIIT_HAND.CONTACT_middle_distal  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_217  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_218  &
   adams_id = 218  &
   contact_element_name = .PISAIIT_HAND.CONTACT_middle_mid1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_218  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_219  &
   adams_id = 219  &
   contact_element_name = .PISAIIT_HAND.CONTACT_middle_mid2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_219  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_220  &
   adams_id = 220  &
   contact_element_name = .PISAIIT_HAND.CONTACT_middle_prox  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_220  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_221  &
   adams_id = 221  &
   contact_element_name = .PISAIIT_HAND.CONTACT_ring_distal  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_221  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_222  &
   adams_id = 222  &
   contact_element_name = .PISAIIT_HAND.CONTACT_ring_mid1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_222  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_223  &
   adams_id = 223  &
   contact_element_name = .PISAIIT_HAND.CONTACT_ring_mid2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_223  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_224  &
   adams_id = 224  &
   contact_element_name = .PISAIIT_HAND.CONTACT_ring_prox  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_224  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_225  &
   adams_id = 225  &
   contact_element_name = .PISAIIT_HAND.CONTACT_thumb_distal  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_225  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_226  &
   adams_id = 226  &
   contact_element_name = .PISAIIT_HAND.CONTACT_thumb_mid  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_226  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_227  &
   adams_id = 227  &
   contact_element_name = .PISAIIT_HAND.CONTACT_thumb_prox  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_227  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_230  &
   adams_id = 230  &
   contact_element_name = .PISAIIT_HAND.CONTACT_palm  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_230  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_233  &
   adams_id = 233  &
   contact_element_name = .PISAIIT_HAND.CONTACT_obj_table  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_233  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_252  &
   adams_id = 252  &
   contact_element_name = .PISAIIT_HAND.CONTACT_42  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_252  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_255  &
   adams_id = 255  &
   contact_element_name = .PISAIIT_HAND.CONTACT_43  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_255  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_258  &
   adams_id = 258  &
   contact_element_name = .PISAIIT_HAND.CONTACT_44  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_258  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_261  &
   adams_id = 261  &
   contact_element_name = .PISAIIT_HAND.CONTACT_45  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_261  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_264  &
   adams_id = 264  &
   contact_element_name = .PISAIIT_HAND.CONTACT_46  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_264  &
   color = RED  &
   visibility = on
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_267  &
   adams_id = 267  &
   contact_element_name = .PISAIIT_HAND.CONTACT_47  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_267  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_348  &
   adams_id = 348  &
   contact_element_name = .PISAIIT_HAND.CONTACT_49  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_348  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_351  &
   adams_id = 351  &
   contact_element_name = .PISAIIT_HAND.CONTACT_50  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_351  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_365  &
   adams_id = 365  &
   contact_element_name = .PISAIIT_HAND.CONTACT_55  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_365  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_366  &
   adams_id = 366  &
   contact_element_name = .PISAIIT_HAND.CONTACT_56  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_366  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_367  &
   adams_id = 367  &
   contact_element_name = .PISAIIT_HAND.CONTACT_57  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_367  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .PISAIIT_HAND.GCONTACT_368  &
   adams_id = 368  &
   contact_element_name = .PISAIIT_HAND.CONTACT_58  &
   force_display = components
!
geometry attributes  &
   geometry_name = .PISAIIT_HAND.GCONTACT_368  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .PISAIIT_HAND.gravity  &
   visibility = off  &
   name_visibility = off  &
   size_of_icons = 100.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = PISAIIT_HAND  &
   maxit_corrector_iterations = 2
!
executive_control set kinematics_parameters  &
   model_name = PISAIIT_HAND  &
   tlimit = 1.0E+010
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_distal_MEA_2  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_distal  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_distal_MEA_2  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_mid1_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_mid1_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_mid1_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_mid1_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_mid1_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_mid1_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_mid2_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_mid2_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_mid2_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_mid2_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_mid2_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_mid2_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_palm_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_palm  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_palm_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_index_prox_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_index_prox  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_index_prox_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_distal_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_distal  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_distal_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_mid1_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_mid1_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_mid1_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_mid1_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_mid1_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_mid1_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_mid2_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_mid2_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_mid2_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_mid2_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_mid2_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_mid2_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_palm_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_palm  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_palm_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_little_prox_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_little_prox  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_little_prox_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_distal_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_distal  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_distal_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_mid1_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_mid1_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_mid1_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_mid1_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_mid1_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_mid1_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_mid2_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_mid2_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_mid2_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_mid2_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_mid2_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_mid2_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_palm_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_palm  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_palm_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_middle_prox_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_middle_prox  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_middle_prox_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_distal_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_distal  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_distal_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_mid1_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_mid1_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_mid1_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_mid1_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_mid1_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_mid1_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_mid2_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_mid2_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_mid2_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_mid2_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_mid2_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_mid2_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_palm_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_palm  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_palm_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_ring_prox_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_ring_prox  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_ring_prox_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_thumb_distal_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_thumb_distal  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_thumb_distal_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_thumb_mid_1_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_thumb_mid_1  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_thumb_mid_1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_thumb_mid_2_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_thumb_mid_2  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_thumb_mid_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_thumb_palm_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_thumb_palm  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_thumb_palm_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .PISAIIT_HAND.JOINT_thumb_prox_MEA_1  &
   from_first = yes  &
   object = .PISAIIT_HAND.JOINT_thumb_prox  &
   characteristic = element_torque  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .PISAIIT_HAND.JOINT_thumb_prox_MEA_1  &
   color = WHITE
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .PISAIIT_HAND.free_angle  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.motor_torque  &
   units = "torque"  &
   range = -1.0E+006, 1.0E+006  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.Dynamic  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.4
!
variable create  &
   variable_name = .PISAIIT_HAND.alpha  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.azimut  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.elevation  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.rho  &
   units = "no_units"  &
   range = 0.0, 150.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.stiffness_contact  &
   units = "stiffness"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0E+005
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_contact  &
   units = "damping"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .PISAIIT_HAND.static  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .PISAIIT_HAND.dynam  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .PISAIIT_HAND.DV_1  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.7
!
variable create  &
   variable_name = .PISAIIT_HAND.K  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .PISAIIT_HAND.K_abd  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .PISAIIT_HAND.K_abd_thumb  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.9
!
variable create  &
   variable_name = .PISAIIT_HAND.K_abd_ring  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .PISAIIT_HAND.dist_x  &
   units = "no_units"  &
   range = -2000.0, 2000.0  &
   use_allowed_values = no  &
   real_value = 1.828325
!
variable create  &
   variable_name = .PISAIIT_HAND.dist_y  &
   units = "no_units"  &
   range = -2000.0, 2000.0  &
   use_allowed_values = no  &
   real_value = 21.505931
!
variable create  &
   variable_name = .PISAIIT_HAND.dist_z  &
   units = "no_units"  &
   range = -2000.0, 2000.0  &
   use_allowed_values = no  &
   real_value = 117.990773
!
variable create  &
   variable_name = .PISAIIT_HAND.rot_z1  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   real_value = 7.9884E-002
!
variable create  &
   variable_name = .PISAIIT_HAND.rot_x2  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   real_value = -2.917625
!
variable create  &
   variable_name = .PISAIIT_HAND.rot_z3  &
   units = "no_units"  &
   range = -360.0, 360.0  &
   use_allowed_values = no  &
   real_value = 0.555195
!
variable create  &
   variable_name = .PISAIIT_HAND.Matrix_R  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 3.02
!
variable create  &
   variable_name = .PISAIIT_HAND.impedenza_motore  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .PISAIIT_HAND.K_p  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 300.0
!
variable create  &
   variable_name = .PISAIIT_HAND.layout_config  &
   integer_value = -989499520
!
variable create  &
   variable_name = .PISAIIT_HAND.R_abd  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.908
!
variable create  &
   variable_name = .PISAIIT_HAND.stiffness_index  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5.0
!
variable create  &
   variable_name = .PISAIIT_HAND.DV_2  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 6.0
!
variable create  &
   variable_name = .PISAIIT_HAND.damping_index  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_x_little  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -39.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_y_little  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -27.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_z_little  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.38894
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z1_little  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_x2_little  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z3_little  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = -0.26
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_x_ring  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -19.5
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_y_ring  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.5
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_z_ring  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.8894
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z1_ring  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_x2_ring  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z3_ring  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = -0.13
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_x_middle  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_y_middle  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_z_middle  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.8894
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z1_middle  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_x2_middle  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z3_middle  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_x_index  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = 19.5
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_y_index  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.5
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_z_index  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -13.8894
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z1_index  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_x2_index  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z3_index  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.3490647416
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_x_thumb  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = 32.869
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_y_thumb  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -54.0178
!
variable create  &
   variable_name = .PISAIIT_HAND.pos_z_thumb  &
   units = "no_units"  &
   range = -1000.0, 1000.0  &
   use_allowed_values = no  &
   real_value = -4.91972
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z1_thumb  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = -0.436332313
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_x2_thumb  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 1.5707963268
!
variable create  &
   variable_name = .PISAIIT_HAND.angle_z3_thumb  &
   units = "no_units"  &
   range = -3.1415926536, 3.1415926536  &
   use_allowed_values = no  &
   real_value = 0.0
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_distal  &
   function = "AZ( .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_249)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_mid2_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_mid2_1  &
   function = "AZ(.PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_247)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_mid1_1  &
   function = "AZ( .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_mid1_2  &
   function = "-AZ(.PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_distal  &
   function = "AZ( .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid2_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid2_1  &
   function = "AZ(.PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid1_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_mid1_1  &
   function = "AZ( .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_distal  &
   function = "AZ(.PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_264)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid2_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid2_1  &
   function = "AZ( .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_262)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid1_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_mid1_1  &
   function = "AZ( .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_257)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_distal  &
   function = "AZ(.PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_270)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_mid2_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_mid2_1  &
   function = "AZ( .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_268)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_mid1_2  &
   function = "AZ(.PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_mid1_1  &
   function = "AZ(.PISAIIT_HAND.LINK_little_prox_mid1.MARKER_266, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_thumb_distal  &
   function = "AZ(  .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_274, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_thumb_mid2  &
   function = "AZ(.PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_thumb_mid1  &
   function = "AZ(.PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_272, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_thumb_abd  &
   function = "AZ(.PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491, .PISAIIT_HAND.palm.marker_palm_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_abd  &
   function = "- AZ( .PISAIIT_HAND.palm.marker_palm_index, .PISAIIT_HAND.PHALANX_index_prox.MARKER_485)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_abd  &
   function = "AZ(.PISAIIT_HAND.PHALANX_ring_prox.MARKER_487, .PISAIIT_HAND.palm.marker_palm_ring)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_abd  &
   function = "AZ(.PISAIIT_HAND.PHALANX_little_prox.MARKER_489, .PISAIIT_HAND.palm.marker_palm_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_distal, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_distal, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_distal_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_distal, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid1, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid1, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid1_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid1, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid2, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid2, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_mid2_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_mid2, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_prox, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_prox, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_index_prox_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_index_prox, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_distal, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_distal, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_distal_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_distal, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid1, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid1, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid1_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid1, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid2, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid2, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_mid2_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_mid2, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_prox, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_prox, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_middle_prox_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_middle_prox, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_distal, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_distal, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_distal_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_distal, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid1, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid1, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid1_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid1, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid2, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid2, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_mid2_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_mid2, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_prox, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_prox, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_ring_prox_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_ring_prox, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_distal, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_distal, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_distal_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_distal, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid1, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid1, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid1_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid1, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid2, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid2, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_mid2_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_mid2, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_distal, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_distal, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_distal_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_distal, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_mid, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_mid, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_mid_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_mid, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_prox, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_FZ  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_prox, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_thumb_prox_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_thumb_prox, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_index_prox  &
   function = "AZ(.PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_middle_prox  &
   function = "AZ(.PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_ring_prox  &
   function = "AZ(.PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_little_prox  &
   function = "AZ(.PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.q_thumb_prox  &
   function = "AZ(.PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.motor_torque1  &
   function = "-3*3.5*60*(1-exp(-time/3))+ varval(.PISAIIT_HAND.stop_tau)*0"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_distal  &
   function = ".PISAIIT_HAND.JOINT_index_distal_MEA_2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid2_2  &
   function = ".PISAIIT_HAND.JOINT_index_mid2_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid2_1  &
   function = ".PISAIIT_HAND.JOINT_index_mid2_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid1_1  &
   function = ".PISAIIT_HAND.JOINT_index_mid1_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_mid1_2  &
   function = ".PISAIIT_HAND.JOINT_index_mid1_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_prox  &
   function = ".PISAIIT_HAND.JOINT_index_prox_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_index_palm  &
   function = ".PISAIIT_HAND.JOINT_index_palm_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_distal  &
   function = ".PISAIIT_HAND.JOINT_little_distal_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid1_1  &
   function = ".PISAIIT_HAND.JOINT_little_mid1_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid1_2  &
   function = ".PISAIIT_HAND.JOINT_little_mid1_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid2_1  &
   function = ".PISAIIT_HAND.JOINT_little_mid2_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_mid2_2  &
   function = ".PISAIIT_HAND.JOINT_little_mid2_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_prox  &
   function = ".PISAIIT_HAND.JOINT_little_prox_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_little_palm  &
   function = ".PISAIIT_HAND.JOINT_little_palm_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_distal  &
   function = ".PISAIIT_HAND.JOINT_middle_distal_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid1_1  &
   function = ".PISAIIT_HAND.JOINT_middle_mid1_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid1_2  &
   function = ".PISAIIT_HAND.JOINT_middle_mid1_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid2_1  &
   function = ".PISAIIT_HAND.JOINT_middle_mid2_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_mid2_2  &
   function = ".PISAIIT_HAND.JOINT_middle_mid2_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_palm  &
   function = ".PISAIIT_HAND.JOINT_middle_palm_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_middle_prox  &
   function = ".PISAIIT_HAND.JOINT_middle_prox_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_distal  &
   function = ".PISAIIT_HAND.JOINT_ring_distal_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid1_1  &
   function = ".PISAIIT_HAND.JOINT_ring_mid1_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid1_2  &
   function = ".PISAIIT_HAND.JOINT_ring_mid1_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid2_1  &
   function = ".PISAIIT_HAND.JOINT_ring_mid2_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_mid2_2  &
   function = ".PISAIIT_HAND.JOINT_ring_mid2_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_palm  &
   function = ".PISAIIT_HAND.JOINT_ring_palm_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_ring_prox  &
   function = ".PISAIIT_HAND.JOINT_ring_prox_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_distal  &
   function = ".PISAIIT_HAND.JOINT_thumb_distal_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_mid_1  &
   function = ".PISAIIT_HAND.JOINT_thumb_mid_1_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_mid_2  &
   function = ".PISAIIT_HAND.JOINT_thumb_mid_2_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_prox  &
   function = ".PISAIIT_HAND.JOINT_thumb_prox_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.torque_thumb_palm  &
   function = ".PISAIIT_HAND.JOINT_thumb_palm_MEA_1"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_index_distal  &
   function = "(.PISAIIT_HAND.K*(91*cos((VARVAL(.PISAIIT_HAND.q_index_mid2_2))) - 111*sin((VARVAL(.PISAIIT_HAND.q_index_mid2_2)) + (VARVAL(.PISAIIT_HAND.q_index_distal))) - 182*cos((VARVAL(.PISAIIT_HAND.q_index_mid2_2)) + (VARVAL(.PISAIIT_HAND.q_index_distal))) + 91*cos((VARVAL(.PISAIIT_HAND.q_index_distal))) + 208*sin((VARVAL(.PISAIIT_HAND.q_index_mid2_2))) + 130*sin((VARVAL(.PISAIIT_HAND.q_index_distal)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_index_mid  &
   function = "(.PISAIIT_HAND.K*(91*cos((VARVAL(.PISAIIT_HAND.q_index_mid1_2))) - 111*sin((VARVAL(.PISAIIT_HAND.q_index_mid1_2)) + (VARVAL(.PISAIIT_HAND.q_index_mid2_1))) - 182*cos((VARVAL(.PISAIIT_HAND.q_index_mid1_2)) + (VARVAL(.PISAIIT_HAND.q_index_mid2_1))) + 91*cos((VARVAL(.PISAIIT_HAND.q_index_mid2_1))) + 208*sin((VARVAL(.PISAIIT_HAND.q_index_mid1_2))) + 130*sin((VARVAL(.PISAIIT_HAND.q_index_mid2_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_index_prox  &
   function = "(.PISAIIT_HAND.K*(91*cos((VARVAL(.PISAIIT_HAND.q_index_prox))) - 111*sin((VARVAL(.PISAIIT_HAND.q_index_prox)) + (VARVAL(.PISAIIT_HAND.q_index_mid1_1))) - 182*cos((VARVAL(.PISAIIT_HAND.q_index_prox)) + (VARVAL(.PISAIIT_HAND.q_index_mid1_1))) + 91*cos((VARVAL(.PISAIIT_HAND.q_index_mid1_1))) + 208*sin((VARVAL(.PISAIIT_HAND.q_index_prox))) + 130*sin((VARVAL(.PISAIIT_HAND.q_index_mid1_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_distal  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid2_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_middle_distal))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_middle_distal))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_middle_distal))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid2_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_middle_distal)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_mid  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid1_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_middle_mid2_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_middle_mid2_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid2_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid1_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid2_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_middle_prox  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_middle_prox))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_middle_prox)) + (-VARVAL(.PISAIIT_HAND.q_middle_mid1_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_middle_prox)) + (-VARVAL(.PISAIIT_HAND.q_middle_mid1_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_middle_mid1_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_middle_prox))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_middle_mid1_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_distal  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid2_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_ring_distal))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_ring_distal))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_ring_distal))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid2_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_ring_distal)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_mid  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid1_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_ring_mid2_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_ring_mid2_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid2_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid1_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid2_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_ring_prox  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_ring_prox))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_ring_prox)) + (-VARVAL(.PISAIIT_HAND.q_ring_mid1_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_ring_prox)) + (-VARVAL(.PISAIIT_HAND.q_ring_mid1_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_ring_mid1_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_ring_prox))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_ring_mid1_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_little_distal  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_little_mid2_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_little_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_little_distal))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_little_mid2_2)) + (-VARVAL(.PISAIIT_HAND.q_little_distal))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_little_distal))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_little_mid2_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_little_distal)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_little_mid  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_little_mid1_2))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_little_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_little_mid2_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_little_mid1_2)) + (-VARVAL(.PISAIIT_HAND.q_little_mid2_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_little_mid2_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_little_mid1_2))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_little_mid2_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_little_prox  &
   function = "(.PISAIIT_HAND.K*(91*cos((-VARVAL(.PISAIIT_HAND.q_little_prox))) - 111*sin((-VARVAL(.PISAIIT_HAND.q_little_prox)) + (-VARVAL(.PISAIIT_HAND.q_little_mid1_1))) - 182*cos((-VARVAL(.PISAIIT_HAND.q_little_prox)) + (-VARVAL(.PISAIIT_HAND.q_little_mid1_1))) + 91*cos((-VARVAL(.PISAIIT_HAND.q_little_mid1_1))) + 208*sin((-VARVAL(.PISAIIT_HAND.q_little_prox))) + 130*sin((-VARVAL(.PISAIIT_HAND.q_little_mid1_1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_thumb_distal  &
   function = "(.PISAIIT_HAND.K*(91*cos((VARVAL(.PISAIIT_HAND.q_thumb_mid2))) - 111*sin((VARVAL(.PISAIIT_HAND.q_thumb_mid2)) + (VARVAL(.PISAIIT_HAND.q_thumb_distal))) - 182*cos((VARVAL(.PISAIIT_HAND.q_thumb_mid2)) + (VARVAL(.PISAIIT_HAND.q_thumb_distal))) + 91*cos((VARVAL(.PISAIIT_HAND.q_thumb_distal))) + 208*sin((VARVAL(.PISAIIT_HAND.q_thumb_mid2))) + 130*sin((VARVAL(.PISAIIT_HAND.q_thumb_distal)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.elastico_thumb_prox  &
   function = "(.PISAIIT_HAND.K*(91*cos((VARVAL(.PISAIIT_HAND.q_thumb_prox))) - 111*sin((VARVAL(.PISAIIT_HAND.q_thumb_prox)) + (VARVAL(.PISAIIT_HAND.q_thumb_mid1))) - 182*cos((VARVAL(.PISAIIT_HAND.q_thumb_prox)) + (VARVAL(.PISAIIT_HAND.q_thumb_mid1))) + 91*cos((VARVAL(.PISAIIT_HAND.q_thumb_mid1))) + 208*sin((VARVAL(.PISAIIT_HAND.q_thumb_prox))) + 130*sin((VARVAL(.PISAIIT_HAND.q_thumb_mid1)))))/2"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fx  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_prox, 1, 2, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fy  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_prox, 1, 3, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_little_prox_Fz  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_little_prox, 1, 4, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.CONTACT_palm_F  &
   function = "CONTACT(.PISAIIT_HAND.CONTACT_palm, 1, 1, 0)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.motor_torque_index  &
   function = "-(3.5+6.1847-8.7235)*60*(1-exp(-time/2))"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.motor_torque_ring  &
   function = "-(3.5-7.9869+6.7543)*60*(1-exp(-time/2))"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.motor_torque_little  &
   function = "-(3.5-8.7235+6.1847)*60*(1-exp(-time/2))"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.VARIABLE_355  &
   function = "0"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.primo_membro_tau  &
   function = "-(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_thumb_distal) + 3.80459E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_thumb_mid1) + 5.56727E-01)  + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_thumb_mid2) -3.80458E-01) + ",  &
              ".PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_thumb_prox) + 5.56727E-01 )) -(.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid_thumb)+ .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_mid_thumb) + .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_prox_thumb)  +",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_distal_thumb)) + .PISAIIT_HAND.stiffness_index*(-3.80453E-01 -3.80459E-01 -5.56727E-01 + 3.80458E-01 -5.56727E-01)",  &
              "-(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_little_distal)- 4.51485E-01) +.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL (.PISAIIT_HAND.q_little_mid1_1) + 3.80453E-01)+ .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_little_mid1_2) +4.37508E-01 ) +",  &
              ".PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_little_mid2_1) - 4.37508E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_little_mid2_2)+ 4.51485E-01 )+ .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_little_prox)+ 3.80453E-01)) -(.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid1_little)+",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid2_little)+.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid2_little)+ .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_distal_little)+.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_prox_little)+",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid1_little))+ .PISAIIT_HAND.stiffness_index*( -5.91300E-01 +4.51485E-01 -3.80453E-01 -4.37508E-01 +  4.37508E-01 -4.51485E-01 )",  &
              "-(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_ring_distal) - 4.51487E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_ring_mid1_1) - 5.91300E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_ring_mid1_2) + 4.51647E-01) +",  &
              " .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_ring_mid2_1) - 4.51647E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_ring_mid2_2)+ 4.51487E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_ring_prox) + 5.91300E-01))-( .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid2_ring)+",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid1_ring)+.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid2_ring)+.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid1_ring)+ ",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_distal_ring) +.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_prox_ring))+.PISAIIT_HAND.stiffness_index*( -5.90907E-01 + 4.51487E-01 + 5.91300E-01 -4.51647E-01+  4.51647E-01 -4.51487E-01)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_index_abd  &
   function = "VZ(.PISAIIT_HAND.PHALANX_index_prox.MARKER_485, .PISAIIT_HAND.palm.marker_palm_index, .PISAIIT_HAND.palm.marker_palm_index)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_distal_index  &
   function = "VZ(.PISAIIT_HAND.LINK_index_mid2_distal.MARKER_249, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_mid1_index  &
   function = "vZ(.PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index,.PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2mid1_index  &
   function = "VZ(.PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_middle  &
   function = "vZ(.PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_little  &
   function = "vZ(.PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_little  &
   function = "vZ(.PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_distal_middle  &
   function = "vZ(.PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_index  &
   function = "vZ(.PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index,.PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_index  &
   function = "vZ(.PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_index  &
   function = "vZ(.PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244,  .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_adb_little  &
   function = "vZ(.PISAIIT_HAND.PHALANX_little_prox.MARKER_489, .PISAIIT_HAND.palm.marker_palm_little, .PISAIIT_HAND.palm.marker_palm_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_distal_little  &
   function = "vZ(.PISAIIT_HAND.LINK_little_mid2_distal.MARKER_270, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_little  &
   function = "vZ(.PISAIIT_HAND.LINK_little_prox_mid1.MARKER_266, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_little  &
   function = "vZ(.PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_little  &
   function = "vZ(.PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_268, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_middle  &
   function = "vZ(.PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle,.PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_middle  &
   function = "vZ(.PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_middle  &
   function = "vZ(.PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_prox_middle  &
   function = "vZ(.PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_abd_ring  &
   function = "vZ(.PISAIIT_HAND.PHALANX_ring_prox.MARKER_487, .PISAIIT_HAND.palm.marker_palm_ring, .PISAIIT_HAND.palm.marker_palm_ring)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_distal_ring  &
   function = "vZ(.PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_264, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid1_ring  &
   function = "vZ(.PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_257, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid1_ring  &
   function = "VZ(.PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_1_mid2_ring  &
   function = "vZ(.PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_262, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid2_ring  &
   function = "VZ(.PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_prox_ring  &
   function = "vZ(.PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256,  .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_abd_thumb  &
   function = "vZ(.PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491, .PISAIIT_HAND.palm.marker_palm_thumb,.PISAIIT_HAND.palm.marker_palm_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_distal_thumb  &
   function = "vZ(.PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_274, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_mid_thumb  &
   function = "vZ(.PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_272, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_2_mid_thumb  &
   function = "vZ(.PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273,  .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.qp_prox_thumb  &
   function = "vZ(.PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.SECONDO_MEMBRO_TAU  &
   function = "-(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_middle_distal) - 4.46807E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_middle_mid1_1) - 5.90907E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_middle_mid1_2) + 4.51136E-01) + ",  &
              ".PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_middle_mid2_1) - 4.51136E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_middle_mid2_2) + 4.46807E-01 )+ .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_middle_prox) + 5.90907E-01))-",  &
              "(.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid2_middle)+ .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid1_middle)+ .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid2_middle)+",  &
              ".PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_distal_middle)+.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid1_middle))+ .PISAIIT_HAND.stiffness_index*(-4.51475E-01 + 4.46807E-01 + 5.90907E-01 -4.51136E-01 + 4.51136E-01 -4.46807E-01)",  &
              "-(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_index_distal) - 4.51481E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_index_mid1_1) - 4.51475E-01) + .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_index_mid1_2) - 4.51479E-01 )+",  &
              ".PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R * (VARVAL(.PISAIIT_HAND.q_index_mid2_1) - 4.51479E-01)+ .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_index_mid2_2) + 1.89622E+00)+ .PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(VARVAL(.PISAIIT_HAND.q_index_prox) + 4.51475E-01))",  &
              "-(.PISAIIT_HAND.damping_index* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_mid1_index) + .PISAIIT_HAND.damping_index* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_1_prox_index)+ .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R*VARVAL(.PISAIIT_HAND.qp_1_prox_middle)+",  &
              ".PISAIIT_HAND.damping_index* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2mid1_index)+.PISAIIT_HAND.damping_index* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_2_mid2_index)+.PISAIIT_HAND.damping_index* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_mid1_index))+",  &
              ".PISAIIT_HAND.stiffness_index*(4.51481E-01 + 4.51475E-01 + 4.51479E-01 + 4.51479E-01 -1.89622E+00)"
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.ultimo_membro_tau  &
   function = " -(.PISAIIT_HAND.K_p* .PISAIIT_HAND.Matrix_R *(-7.07703E-01 -3.93697E-02 + 7.09878E-02 -1.20927E-03))-",  &
              "( .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_abd_ring) +.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_abd_thumb) +.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_adb_little) +",  &
              " .PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_distal_index) +.PISAIIT_HAND.impedenza_motore* .PISAIIT_HAND.Matrix_R* VARVAL(.PISAIIT_HAND.qp_index_abd))+  .PISAIIT_HAND.stiffness_abd *(-7.07703E-01) + .PISAIIT_HAND.stiffness_abd_thumb *(-3.93697E-02 + 7.09878E-02 -1.20927E-03)  "
!
data_element modify variable  &
   variable_name = .PISAIIT_HAND.stop_tau  &
   function = "varval(.PISAIIT_HAND.primo_membro_tau)+varval(.PISAIIT_HAND.SECONDO_MEMBRO_TAU)+varval(.PISAIIT_HAND.ultimo_membro_tau)"
!
force modify direct single_component_force  &
   single_component_force_name = .PISAIIT_HAND.SFORCE_19  &
   function = "step(time,3,0,5,-0.3*9.81)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_middle_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_thumb_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "VARVAL(.PISAIIT_HAND.motor_torque1)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_index_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "VARVAL(.PISAIIT_HAND.motor_torque_index)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_ring_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque_ring)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_little_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-VARVAL(.PISAIIT_HAND.motor_torque_little)*0"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_index_distal))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_index_mid1_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_index_mid2_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_middle_distal))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_middle_mid2_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_middle_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_middle_mid1_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_ring_distal))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_ring_mid2_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_ring_mid1_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_little_distal))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_mid  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_little_mid2_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_little_mid1_1))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_distal  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_thumb_distal))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_prox  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-127*(-VARVAL(.PISAIIT_HAND.q_thumb_mid2))"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_index_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-0.7*.PISAIIT_HAND.K_abd*(70.3)*VARVAL(.PISAIIT_HAND.q_index_abd)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_ring_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-0.7*.PISAIIT_HAND.K_abd_ring*(70.3)*VARVAL(.PISAIIT_HAND.q_ring_abd)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_little_palm  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-0.7*.PISAIIT_HAND.K_abd*(70.3)*VARVAL(.PISAIIT_HAND.q_little_abd)"
!
force modify direct torque_vector  &
   torque_vector_name = .PISAIIT_HAND.VTORQUE_elastico_thumb_palm_2  &
   x_torque_function = "0"  &
   y_torque_function = "0"  &
   z_torque_function = "-2*.PISAIIT_HAND.K_abd_thumb*sqrt(((14.32*cos(0.4324 - VARVAL(.PISAIIT_HAND.q_thumb_abd)) - 13)*(14.32*cos(0.4324 - VARVAL(.PISAIIT_HAND.q_thumb_abd)) - 13)) + ((14.32*sin(0.4324 - VARVAL(.PISAIIT_HAND.q_thumb_abd)) - 6)*(14.32*sin(0.4324 - VARVAL(.PISAIIT_HAND.q_thumb_abd)) - 6)))*14.3*cos(0.4324-VARVAL(.PISAIIT_HAND.q_thumb_abd))"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_index  &
   f2 = "VARVAL(.PISAIIT_HAND.q_index_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_index_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_index_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_index_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_index_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_index_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_middle  &
   f2 = "VARVAL(.PISAIIT_HAND.q_middle_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_middle_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_middle_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_middle_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_middle_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_middle_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_ring  &
   f2 = "VARVAL(.PISAIIT_HAND.q_ring_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_ring_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_ring_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_ring_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_ring_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_ring_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_little  &
   f2 = "VARVAL(.PISAIIT_HAND.q_little_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_little_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_little_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_little_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_little_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_little_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_abd  &
   f2 = "VARVAL(.PISAIIT_HAND.q_thumb_abd)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_index_abd)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_ring_abd)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_little_abd)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_q_thumb  &
   f2 = "VARVAL(.PISAIIT_HAND.q_thumb_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.q_thumb_mid1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.q_thumb_mid2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.q_thumb_prox)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_ring_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_ring_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_index  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_index_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_index_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_index_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_index_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.torque_index_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.torque_index_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_little  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_little_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_little_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_little_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_little_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.torque_little_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.torque_little_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_middle  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_middle_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_middle_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_middle_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_middle_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.torque_middle_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.torque_middle_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_ring  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_ring_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_ring_mid1_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_ring_mid1_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_ring_mid2_1)"  &
   f7 = "VARVAL(.PISAIIT_HAND.torque_ring_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.torque_ring_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_thumb  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_thumb_distal)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_thumb_mid_1)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_thumb_mid_2)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_thumb_prox)"  &
   f7 = "VARVAL(.PISAIIT_HAND.q_ring_mid2_2)"  &
   f8 = "VARVAL(.PISAIIT_HAND.q_ring_prox)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_tau_abd  &
   f2 = "VARVAL(.PISAIIT_HAND.torque_thumb_palm)"  &
   f3 = "VARVAL(.PISAIIT_HAND.torque_index_palm)"  &
   f4 = "VARVAL(.PISAIIT_HAND.torque_ring_palm)"  &
   f6 = "VARVAL(.PISAIIT_HAND.torque_little_palm)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_index_1  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_ring_1  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_index_2  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_middle_1  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_middle_2  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_ring_2  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_little_1  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_little_2  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_thumb_1  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fz)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fz)"
!
output_control modify request  &
   request_name = .PISAIIT_HAND.req_contact_thumb_2  &
   f2 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_Fx)"  &
   f3 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_Fy)"  &
   f4 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_FZ)"  &
   f6 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fx)"  &
   f7 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fy)"  &
   f8 = "VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fz)"
!
executive_control modify sensor  &
   sensor_name = .PISAIIT_HAND.SENSOR_1  &
   function = "ABS(STEP(time,0.0,1.0,1.0E-002,0.0)*(VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_index_distal_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid1_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_index_mid2_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_index_prox_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_middle_distal_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid1_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_middle_mid2_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_middle_prox_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_ring_distal_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid1_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_ring_mid2_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_ring_prox_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_little_distal_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid1_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_little_mid2_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_little_prox_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_distal_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_mid_Fz)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_Fx)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_Fy)+VARVAL(.PISAIIT_HAND.CONTACT_thumb_prox_FZ)+VARVAL(.PISAIIT_HAND.CONTACT_palm_F)))"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_middle_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_mid
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_prox
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_distal
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_thumb_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_index_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_ring_palm
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PISAIIT_HAND.TORSION_SPRING_little_palm
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.ground.MARKER_549  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_548))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_548))
!
marker modify  &
   marker_name = .PISAIIT_HAND.ground.MARKER_551  &
   location =   &
      (LOC_RELATIVE_TO({-44, -5, -10}, .PISAIIT_HAND.palm.MARKER_rif))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_rif))
!
marker modify  &
   marker_name = .PISAIIT_HAND.ground.MARKER_PARAM  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.dist_x, .PISAIIT_HAND.dist_y, .PISAIIT_HAND.dist_z}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.rot_z1, .PISAIIT_HAND.rot_x2, .PISAIIT_HAND.rot_z3}, .PISAIIT_HAND.palm.grasp_marker))
!
marker modify  &
   marker_name = .PISAIIT_HAND.ground.MARKER_567  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.table.MARKER_554))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.table.MARKER_554))
!
material modify  &
   material_name = .PISAIIT_HAND.aluminum  &
   youngs_modulus = (7.1705E+010(Newton/meter**2))  &
   density = (2740.0(kg/meter**3))
!
material modify  &
   material_name = .PISAIIT_HAND.wood  &
   youngs_modulus = (1.1E+010(Newton/meter**2))  &
   density = (438.0(kg/meter**3))
!
material modify  &
   material_name = .PISAIIT_HAND.glass  &
   youngs_modulus = (4.62E+010(Newton/meter**2))  &
   density = (2595.0(kg/meter**3))
!
material modify  &
   material_name = .PISAIIT_HAND.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_rif  &
   location =   &
      (LOC_RELATIVE_TO({45, 10, -35}, .PISAIIT_HAND.palm.ref_palm_geom))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -1.57, 0}, .PISAIIT_HAND.palm.ref_palm_geom))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_index  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.pos_x_index, .PISAIIT_HAND.pos_y_index, .PISAIIT_HAND.pos_z_index}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.angle_z1_index, .PISAIIT_HAND.angle_x2_index, .PISAIIT_HAND.angle_z3_index}, .PISAIIT_HAND.ground.MARKER_549))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_middle  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.pos_x_middle, .PISAIIT_HAND.pos_y_middle, .PISAIIT_HAND.pos_z_middle}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.angle_z1_middle, .PISAIIT_HAND.angle_x2_middle, .PISAIIT_HAND.angle_z3_middle}, .PISAIIT_HAND.ground.MARKER_549))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_ring  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.pos_x_ring, .PISAIIT_HAND.pos_y_ring, .PISAIIT_HAND.pos_z_ring}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.angle_z1_ring, .PISAIIT_HAND.angle_x2_ring, .PISAIIT_HAND.angle_z3_ring}, .PISAIIT_HAND.ground.MARKER_549))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_little  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.pos_x_little, .PISAIIT_HAND.pos_y_little, .PISAIIT_HAND.pos_z_little}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.angle_z1_little, .PISAIIT_HAND.angle_x2_little, .PISAIIT_HAND.angle_z3_little}, .PISAIIT_HAND.ground.MARKER_549))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_12  &
   location =   &
      (LOC_RELATIVE_TO({22.5, -3.3, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_811))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.marker_palm_thumb  &
   location =   &
      (LOC_RELATIVE_TO({.PISAIIT_HAND.pos_x_thumb, .PISAIIT_HAND.pos_y_thumb, .PISAIIT_HAND.pos_z_thumb}, .PISAIIT_HAND.palm.grasp_marker))  &
   orientation =   &
      (ORI_RELATIVE_TO({.PISAIIT_HAND.angle_z1_thumb, .PISAIIT_HAND.angle_x2_thumb, .PISAIIT_HAND.angle_z3_thumb}, .PISAIIT_HAND.ground.MARKER_549))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_369  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_486  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_488  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_490  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_492  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0.0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_494  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_496  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_498  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_500  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_502  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_505  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_508  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_511  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_547  &
   location =   &
      (LOC_RELATIVE_TO({-44, -5, -10}, .PISAIIT_HAND.palm.MARKER_rif))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_rif))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_548  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_547))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_547))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_550  &
   location =   &
      (LOC_RELATIVE_TO({-44, -5, -10}, .PISAIIT_HAND.palm.MARKER_rif))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_rif))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.ref_palm_geom  &
   location =   &
      (LOC_RELATIVE_TO({0, -30, -10}, .PISAIIT_HAND.palm.ref_palm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, -PI / 2, 0}, .PISAIIT_HAND.palm.ref_palm))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_681  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_682  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_683  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_684  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_685  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.grasp_marker  &
   location =   &
      (LOC_RELATIVE_TO({0, 40, 0}, .PISAIIT_HAND.palm.ref_palm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.ref_palm))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_765  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.palm.MARKER_775  &
   location =   &
      (LOC_RELATIVE_TO({-11, -65.75, -10.3}, .PISAIIT_HAND.palm.MARKER_rif))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0.26}, .PISAIIT_HAND.palm.MARKER_rif))  &
   relative_to = .PISAIIT_HAND.palm
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index  &
   location =   &
      (LOC_RELATIVE_TO({0, -9, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_285  &
   location =   &
      (LOC_RELATIVE_TO({0, -9, -1.5}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_485  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_486))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_486))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_495  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_496))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_496))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_504  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_764  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_505))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_769  &
   location =   &
      (LOC_RELATIVE_TO({0, -15.25, -1.5}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_772  &
   location =   &
      (LOC_RELATIVE_TO({0, -15.25, -1.5}, .PISAIIT_HAND.palm.marker_palm_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_prox.MARKER_868  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_764))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, PI, -PI / 2}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_764))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_300  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_285))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_285))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_311  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_310))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_712  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_716  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_718  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid1.MARKER_787  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_302  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_314  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_313))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_710  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_mid2.MARKER_792  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_304  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_295  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_317  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_316))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_316))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_704  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_713  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_715  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_index_distal.MARKER_780  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({-180 * PI / 180 * 0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.PHALANX_index_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle  &
   location =   &
      (LOC_RELATIVE_TO({0, -9, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_368  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_prox.MARKER_807  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_368))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_353  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_336  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_336))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_336))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_335  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_360  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_359))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_725  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_727  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_797  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_355  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_340  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_340))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_340))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_339  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_363  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_362))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_722  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_724  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_810  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_357  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_343  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_366  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_365))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_719  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_721  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_middle_distal.MARKER_790  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.PHALANX_middle_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring  &
   location =   &
      (LOC_RELATIVE_TO({0, -9, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_487  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_488))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_488))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_497  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_498))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_498))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_507  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_508))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_508))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_767  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_prox.MARKER_806  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_487))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_385  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_372  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_392  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_391))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_734  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_736  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_799  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_387  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_375))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_375))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378  &
   location =   &
      (LOC_RELATIVE_TO({-9, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_377))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_377))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_395  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_394))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_731  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_733  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_798  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_389  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_380  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_381))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_381))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_398  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_397))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_728  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_730  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_ring_distal.MARKER_794  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.PHALANX_ring_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little  &
   location =   &
      (LOC_RELATIVE_TO({0, -9, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_402  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_489  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_490))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_490))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_499  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_500))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_500))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_510  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_770  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_prox.MARKER_805  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_489))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_417  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little  &
   location =   &
      (LOC_RELATIVE_TO({-8.5, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_402))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_402))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406  &
   location =   &
      (LOC_RELATIVE_TO({-8.5, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_405))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_405))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_424  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_423))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_743  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_745  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid1.MARKER_801  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_419  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little  &
   location =   &
      (LOC_RELATIVE_TO({-8.5, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_407))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_407))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410  &
   location =   &
      (LOC_RELATIVE_TO({-8.5, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_409))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_409))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_427  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_426))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_740  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_742  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_mid2.MARKER_800  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_421  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_429  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_412  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_413))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_413))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_430  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_429))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_429))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_737  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_739  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_little_distal.MARKER_795  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.PHALANX_little_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_12))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, -90 * PI / 180}, .PISAIIT_HAND.palm.marker_12))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_491  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0.0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_493  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_501  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_502))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_502))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_773  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_502))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.MARKER_502))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_811  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 114.5 * PI / 180, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_870  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.marker_palm_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_prox
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_475  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb  &
   location =   &
      (LOC_RELATIVE_TO({0, 9, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_470))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_470))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_469))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_480  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_479))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_749  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_751  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_865  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({-90 * PI / 180, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_477  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_473  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_474))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_474))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_483  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_482))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_746  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_748  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_863  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({-90 * PI / 180, 90 * PI / 180, 90 * PI / 180}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.PHALANX_thumb_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_301  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_1_prox_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_245  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_1_mid1_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_286  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_285))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_prox.MARKER_285))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_288  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_287))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_297  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.LINK_index_prox_mid1.MARKER_244))  &
   relative_to = .PISAIIT_HAND.LINK_index_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_index_prox_mid1.LINK_31  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_303  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_2_mid1_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_247  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_1_mid2_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_290  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid1.MARKER_289))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_292  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_291))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_298  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.LINK_index_mid1_mid2.MARKER_246))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_index_mid1_mid2.LINK_32  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_305  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_2_mid2_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_249  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_1_distal_index))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_294  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_mid2.MARKER_293))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_296  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_295))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_index_distal.MARKER_295))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_299  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.LINK_index_mid2_distal.MARKER_248))  &
   relative_to = .PISAIIT_HAND.LINK_index_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_index_mid2_distal.LINK_33  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_354  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_251  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_1_mid1_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_250))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_333))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_334))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.PHALANX_middle_prox.MARKER_1_prox_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_336  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_335))  &
   relative_to = .PISAIIT_HAND.LINK_middle_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_prox_mid1.LINK_34  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_356  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_2_mid1_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_253  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_1_mid2_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_252))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid1.MARKER_337))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_338))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346  &
   location =   &
      (LOC_RELATIVE_TO({-26, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_prox_mid1.MARKER_345))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_340  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_339))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_mid1_mid2.LINK_35  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_358  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_254  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_2_mid2_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_255  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_distal.MARKER_1_distal_middle))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_254))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_254))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_middle_mid2.MARKER_341))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_343  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_342))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_347  &
   location =   &
      (LOC_RELATIVE_TO({-26, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid1_mid2.MARKER_346))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_344  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_343))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_middle_mid2_distal.MARKER_343))  &
   relative_to = .PISAIIT_HAND.LINK_middle_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_middle_mid2_distal.LINK_36  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_386  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_257  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_256))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_1_mid1_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_371  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_370))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_373  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_371))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_371))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_382  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.PHALANX_ring_prox.MARKER_1_prox_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_prox_mid1.LINK_37  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_388  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_2_mid1_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_262  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_1_mid2_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_261))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_375  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid1.MARKER_374))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_377  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_376))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_383  &
   location =   &
      (LOC_RELATIVE_TO({-26, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_382))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_prox_mid1.MARKER_382))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_mid1_mid2.LINK_39  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_390  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_2_mid2_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_264  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_distal.MARKER_1_distal_ring))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_263))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_379  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_ring_mid2.MARKER_378))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_381  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_379))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_379))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_ring_mid2_distal.MARKER_384  &
   location =   &
      (LOC_RELATIVE_TO({-26, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_383))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_ring_mid1_mid2.MARKER_383))  &
   relative_to = .PISAIIT_HAND.LINK_ring_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_ring_mid2_distal.LINK_40  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_418  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_266  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_1_mid1_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_265))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_403  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_402))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_402))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_405  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_404))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_414  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 1.57, 0}, .PISAIIT_HAND.PHALANX_little_prox.MARKER_1_prox_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_prox_mid1
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_little_prox_mid1.LINK_41  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_420  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_2_mid1_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_268  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_1_mid2_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_267))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_407  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid1.MARKER_406))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_409  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_408))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_415  &
   location =   &
      (LOC_RELATIVE_TO({-21.5, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_414))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_prox_mid1.MARKER_414))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid1_mid2
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_little_mid1_mid2.LINK_42  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_422  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_2_mid2_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_270  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_distal.MARKER_1_distal_little))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.cm  &
   location =   &
      (LOC_RELATIVE_TO({-6.5, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_269))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_411  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_little_mid2.MARKER_410))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_413  &
   location =   &
      (LOC_RELATIVE_TO({-13, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_411))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_411))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_little_mid2_distal.MARKER_416  &
   location =   &
      (LOC_RELATIVE_TO({-21.5, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_415))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_little_mid1_mid2.MARKER_415))  &
   relative_to = .PISAIIT_HAND.LINK_little_mid2_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_little_mid2_distal.LINK_43  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_476  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_272  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_1_mid_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.cm  &
   location =   &
      (LOC_RELATIVE_TO({0, 6.5, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_271))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_444  &
   location =   &
      (LOC_RELATIVE_TO({0, 6.5, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({1.57, 1.57, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_1_prox_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_468  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_prox.MARKER_467))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_470  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_468))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_468))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_prox_mid
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_thumb_prox_mid.LINK_44  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_478  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_2_mid_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_274  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_distal.MARKER_1_distal_thumb))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.cm  &
   location =   &
      (LOC_RELATIVE_TO({0, 6.5, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_273))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_443  &
   location =   &
      (LOC_RELATIVE_TO({26, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_444))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_prox_mid.MARKER_444))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_472  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.PHALANX_thumb_mid.MARKER_471))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_474  &
   location =   &
      (LOC_RELATIVE_TO({0, 13, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_472))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.LINK_thumb_mid_distal.MARKER_472))  &
   relative_to = .PISAIIT_HAND.LINK_thumb_mid_distal
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape link  &
   link_name = .PISAIIT_HAND.LINK_thumb_mid_distal.LINK_45  &
   width = (1.3mm)  &
   depth = (0.65mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.table.MARKER_842  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.ref_palm))  &
   relative_to = .PISAIIT_HAND.table
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.table.MARKER_554  &
   location =   &
      (LOC_RELATIVE_TO({-120, 120, -2}, .PISAIIT_HAND.ground.MARKER_PARAM))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, PI / 2, 0}, .PISAIIT_HAND.ground.MARKER_PARAM))  &
   relative_to = .PISAIIT_HAND.table
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.table.MARKER_566  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.table.MARKER_554))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.table.MARKER_554))  &
   relative_to = .PISAIIT_HAND.table
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
geometry modify shape block  &
   block_name = .PISAIIT_HAND.table.BOX_204  &
   diag_corner_coords =   &
      (260mm),  &
      (-60mm),  &
      (306mm)
!
marker modify  &
   marker_name = .PISAIIT_HAND.object.MARKER_move  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.palm.ref_palm))  &
   relative_to = .PISAIIT_HAND.object
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.object.MARKER_653  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.ground.MARKER_PARAM))  &
   relative_to = .PISAIIT_HAND.object
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
marker modify  &
   marker_name = .PISAIIT_HAND.object.MARKER_687  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.ground.MARKER_PARAM))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, .PISAIIT_HAND.ground.MARKER_PARAM))  &
   relative_to = .PISAIIT_HAND.object
!
defaults coordinate_system  &
   default_coordinate_system = .PISAIIT_HAND.ground
!
part modify rigid_body mass_properties  &
   part_name = .PISAIIT_HAND.object  &
   density = (2740.0(kg/meter**3) * 0.2)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_palm  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_index_distal  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_index_mid1  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_index_mid2  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_index_prox  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_little_distal  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_little_mid1  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_little_mid2  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_little_prox  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_distal  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_mid1  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_mid2  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_middle_prox  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_distal  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_mid1  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_mid2  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_ring_prox  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_distal  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_mid  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_thumb_prox  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_palm  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.dynam)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_42  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_43  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_44  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_45  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_46  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_47  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_49  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_50  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_55  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_56  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_57  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
contact modify  &
   contact_name = .PISAIIT_HAND.CONTACT_58  &
   stiffness = (.PISAIIT_HAND.stiffness_contact)  &
   damping = (.PISAIIT_HAND.damping_contact)  &
   mu_static = (.PISAIIT_HAND.static)  &
   mu_dynamic = (.PISAIIT_HAND.Dynamic)
!
force modify element_like field  &
   field_name = .PISAIIT_HAND.wrist  &
   stiffness_matrix =   &
      (100(newton/mm)),  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      (100(newton/mm)),  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      (100(newton/mm)),  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      (100(newton-mm/deg)),  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      (100(newton-mm/deg)),  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      0.0,  &
      (100(newton-mm/deg))
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_19_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_elastico_index_distal.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_35_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_elastico_index_palm.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.SFORCE_19_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.SFORCE_19.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_1_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_index_prox.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_2_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_index_mid.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_4_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_middle_prox.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_5_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_middle_mid.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_6_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_middle_distal.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_7_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_ring_prox.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_8_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_ring_mid.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_9_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_ring_distal.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_10_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_little_prox.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_11_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_little_mid.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_12_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_little_distal.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_13_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_thumb_prox.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_14_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_thumb_distal.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_15_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_thumb_palm.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_16_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_index_palm.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_17_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_ring_palm.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.VTORQUE_18_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.VTORQUE_little_palm.i)
!
geometry modify shape force  &
   force_name = .PISAIIT_HAND.FIELD_1_force_graphic_1  &
   applied_at_marker_name = (.PISAIIT_HAND.wrist.i)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z1_little  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_x2_little  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z3_little  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z1_ring  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_x2_ring  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z3_ring  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z1_middle  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_x2_middle  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z3_middle  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z1_index  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_x2_index  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z3_index  &
   range =   &
      (-PI),  &
      (PI)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z1_thumb  &
   range =   &
      (-PI),  &
      (PI)  &
   real_value = (-25 * PI / 180)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_x2_thumb  &
   range =   &
      (-PI),  &
      (PI)  &
   real_value = (90 * PI / 180)
!
variable modify  &
   variable_name = .PISAIIT_HAND.angle_z3_thumb  &
   range =   &
      (-PI),  &
      (PI)
!
model display  &
   model_name = PISAIIT_HAND
