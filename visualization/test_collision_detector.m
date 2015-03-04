[ObjectMesh] = import_shl( '../input_files/collander_c++.shl' );

load('sim_info_collander.mat')
load('sim_info_collander_collision.mat')
T_object = [ eye(3) [To_Adams_variations(end,1);To_Adams_variations(end,2);To_Adams_variations(end,3)]; [0 0 0 1]] * ...
[ROTZ(To_Adams_variations(end,4))*ROTX(To_Adams_variations(end,5))*ROTZ(To_Adams_variations(end,6)) [0;0;0];[0 0 0 1]];
T_hand = inv(T_object);
T_hand(1:3,4) = T_hand(1:3,4)/1000;

 figure();
 plot3(ObjectMesh(:,1), ObjectMesh(:,2), ObjectMesh(:,3),'*'); 
 title('Original_object'); grid on; hold on;
 xlabel( 'x' );
 ylabel( 'y' );
 zlabel( 'z' );
 plotCSYS(eye(4), 0.3);
 hold on
 plotCSYS(T_hand, .1);
 axis([ -.2 .2 -.2 .2 -.2 .2])

if ( isCollisionHand( ObjectMesh,T_hand, true ) )
    disp( 'Object in Collision with the hand' );
else
    disp( 'Object not in Collision with the hand' );
end
