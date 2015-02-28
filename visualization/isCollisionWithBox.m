function [ collision ] = isCollisionWithBox( ObjectMesh, T_hand_object, box_center, dimensions, enableplot )
%ISCOLLISIONWITHBOX This function checks if there is a collision betwen an object
%and the hand
%   mesh is the point cloud of the object
%   hand Hand is the points defining the vertices of th bounding box of the
%   hand
%   T is the hand frame tranformation with trespect to the object

    
collision = true;

T_box_hand = box_center;
%T_box_hand = eye(4);

T_box_object = T_hand_object * T_box_hand;

T_object_box = inv( T_box_object );


mesh_in_box_frame = ( T_object_box * [ ObjectMesh ones( size( ObjectMesh,1 ),1 ) ].' ).';

%xmin = -0.075;
%xmax = 0.108;
%ymin = -0.090;
%ymax = 0.092;
%zmin = -0.026;
%zmax = 0.007;

xlength = dimensions(1);
ylength = dimensions(2);
zlength = dimensions(3);

xmin = -xlength/2;
xmax = xlength/2;
ymin = -ylength/2;
ymax = ylength/2;
zmin = -zlength/2;
zmax = zlength/2;


% compute indices of points inside visible area
xOk = mesh_in_box_frame(:,1) >= xmin & mesh_in_box_frame(:,1) <= xmax;
yOk = mesh_in_box_frame(:,2) >= ymin & mesh_in_box_frame(:,2) <= ymax;
zOk = mesh_in_box_frame(:,3) >= zmin & mesh_in_box_frame(:,3) <= zmax;

% identify points inside box
ind = find(xOk & yOk & zOk);

if ( isempty( ind ) )
    collision = false; 
end


%% section just for test
X1_box = [xmin;ymin;zmin];
X2_box = [xmax;ymax;zmax];
% 
X1_object = T_box_object * [X1_box;1];
X2_object = T_box_object * [X2_box;1];
% 
% 
% figure();
%  plot3(ObjectMesh(:,1), ObjectMesh(:,2), ObjectMesh(:,3),'*'); 
%  title('Original_object'); grid on
if enableplot
  if ~collision
     hold on
     plotOrientedIsobox( X1_box,X2_box,T_box_object);
  end
end
%  xlabel( 'x' );
%  ylabel( 'y' );
%  zlabel( 'z' );
%  plotCSYS(eye(4), .1);
%  plotCSYS(T_box_object, .5);
%  plotCSYS(T_hand_object, .1);
%  axis([ -.5 .5 -.5 .5 -.5 .5])
%%

end



