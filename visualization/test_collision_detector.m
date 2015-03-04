[ObjectMesh] = import_shl( '../input_files/cup.shl' );

T_hand = [ eye(3)  [ 0;0;-0.12 ]; [ 0 0 0 1 ]];
 figure();
 plot3(ObjectMesh(:,1), ObjectMesh(:,2), ObjectMesh(:,3),'*'); 
 title('Original_object'); grid on
 xlabel( 'x' );
 ylabel( 'y' );
 zlabel( 'z' );
 plotCSYS(eye(4), .1);
  plotCSYS(T_hand, .1);
 axis([ -.2 .2 -.2 .2 -.2 .2])

if ( isCollisionHand( ObjectMesh,T_hand, true ) )
    disp( 'Object in Collision with the hand' );
else
    disp( 'Object not in Collision with the hand' );
end
