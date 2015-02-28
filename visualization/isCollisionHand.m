function [ collision ] = isCollisionHand( ObjectMesh, T_hand, enableplot )


palm_box = [1.00000	0.0000000000	0.0000000000	-.0100000;
0.0000000000	1.00000	0.0000000000	-.0410000;
0.0000000000	0.0000000000	1.00000	-.0140000;
0 0 0 1];

collision_palm = isCollisionWithBox( ObjectMesh, T_hand, palm_box, [.110;.112;.028], enableplot );

little_box = [0.939693	-0.342020	0.0000000000	-0.0562720;
0.342020	0.939693	0.0000000000	0.0204545;
0.0000000000	0.0000000000	1.00000	-0.0140000;
0 0 0 1];

collision_little = isCollisionWithBox( ObjectMesh, T_hand, little_box, [.017;.082;.028], enableplot );

ring_box = [0.984808	-0.173648	0.0000000000	-0.0280956;
0.173648	0.984808	0.0000000000	0.0352480;
0.0000000000	0.0000000000	1.00000	-0.0140000;
0 0 0 1];

collision_ring = isCollisionWithBox( ObjectMesh, T_hand, ring_box, [.017;.082;.028], enableplot );

middle_box = [1.00000	0.0000000000	0.0000000000	0.0000000000;
0.0000000000	1.00000	0.0000000000	0.0505000;
0.0000000000	0.0000000000	1.00000	-0.0140000;
0 0 0 1];

collision_middle = isCollisionWithBox( ObjectMesh, T_hand, middle_box, [.017;.082;.028], enableplot );

index_box = [0.939693	0.342020	0.0000000000	0.0367720;
-0.342020	0.939693	0.0000000000	0.0339545;
0.0000000000	0.0000000000	1.00000	-0.0140000;
0 0 0 1];

collision_index = isCollisionWithBox( ObjectMesh, T_hand, index_box, [.017;.082;.028], enableplot );

thumb_box = [-0.174881	0.906308	0.384737	0.0700355;
0.375033	0.422618	-0.825072	-0.0366905;
-0.910366 0.0000000000	-0.413803	-0.00161972;
0 0 0 1];

collision_thumb = isCollisionWithBox( ObjectMesh, T_hand, thumb_box, [.017;.082;.028], enableplot );

collision = collision_little || collision_ring || collision_middle || collision_index || collision_thumb;