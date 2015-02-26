[points] = import_shl( '../input_files/cup.shl' );

T_hand = [ eye( 3 )  [ 0;0;-0.012 ]; [ 0 0 0 1 ]];
if ( isCollision( points,T_hand ) )
    disp( 'Object in Collision with the hand' );
else
    disp( 'Object not in Collision with the hand' );
end
