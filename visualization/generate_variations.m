

function [ variations_fc_2d ] = generate_variations( ObjectMesh, To_Adams, box_lenght, l_step, a_step, numposes )

variation_linear =[0 [-box_lenght/2:l_step:box_lenght/2]];
variation_angle = [0 [-40*pi/180:a_step*pi/180:40*pi/180]];
variations_main_axis = [variation_linear.' zeros(size(variation_linear,2),1); zeros(size(variation_angle,2),1) variation_angle.' ];

originalT = To_Adams;

k = 1;
variations_fc = [];
for i=1:size(variations_main_axis,1)
   
    variations{i} = toTH(originalT) * toTH( [variations_main_axis(i,1),0,0,0,variations_main_axis(i,2),0] );
    variations_fc_bool(i) = isCollisionHand( ObjectMesh, variations{i}, false );
    if( ~variations_fc_bool(i))
        variations_fc = [variations_fc; toE(variations{i})];
        k = k+1;
    end
    
end

[rlinear, r_ang] = findrange( variations_fc_bool(1:size(variation_linear,2)), variations_fc_bool(size(variation_linear,2)+1:end) );

if ( isempty(rlinear) || isempty(r_ang))
    variations_fc_2d = [];
else
    rangelinear = [ variation_linear(rlinear(1)) variation_linear(rlinear(2))];
    rangeang = [ variation_angle(r_ang(1)) variation_angle(r_ang(2))];


    i=1;
    % figure()
    % plot(0,0)
    % hold on
    while i<=numposes
        plinear = rangelinear(1)+( rangelinear(2) - rangelinear(1))*rand();
        pang = rangeang(1)+( rangeang(2) - rangeang(1))*rand();
    %     plot(plinear,pang, '*')
        variations_2d = toTH(originalT) * toTH( [plinear,0,0,0,pang,0] );
        variations_fc_bool_2d = isCollisionHand( ObjectMesh, variations_2d , false );
        if( ~variations_fc_bool_2d)
            variations_fc_2d(i,:) =  toE(variations_2d);
            isCollisionHand( ObjectMesh, variations_2d , true );
            i = i+1;
        end
    end


end



end


function T = toTH( configxyzzxz )

T = [ eye(3) [configxyzzxz(1);configxyzzxz(2);configxyzzxz(3)]; [0 0 0 1]] * [ROTZ(-configxyzzxz(6))*ROTX(-configxyzzxz(5))*ROTZ(-configxyzzxz(4)) [0;0;0];[0 0 0 1]];

end

function E = toE ( T )

R = T(1:3,1:3);
 psi=atan2(R(1,3), -R(2,3));
 phi=atan2(-cos(psi)*R(1,2)-sin(psi)*R(2,2), cos(psi)*R(1,1)+sin(psi)*R(2,1));
 theta=atan2(sin(psi)*R(1,3)-cos(psi)*R(2,3), R(3,3));
 

   E = [T(1:3,4).'  -phi -theta -psi] ;

end

function [rlinear, r_ang] = findrange( vlinear, vang )
init_linear = [];
end_linear = [];

init_ang = [];
end_ang = [];

for i = 2:size(vlinear,2)
    if vlinear(i) == 0
        init_linear = i;
        break;
    end
end

for i = size(vlinear,2):-1:2
    if vlinear(i) == 0
        end_linear = i;
        break;
    end
end


for i = 2:size(vang,2)
    if vang(i) == 0
        init_ang = i;
        break;
    end
end

for i = size(vang,2):-1:2
    if vang(i) == 0
        end_ang = i;
        break;
    end
end

rlinear = [init_linear end_linear];
r_ang = [init_ang end_ang];

end
