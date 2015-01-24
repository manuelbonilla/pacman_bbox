function [R, palm_points] = bounding_box_plots(filename_object, bb_results)

[points] = import_shl(filename_object);

 

figure();
plot3(points(:,1), points(:,2), points(:,3),'*'); 
title('Original_object'); grid on

plotCSYS(eye(4), .12);
xlabel('x');  ylabel('y');  zlabel('z'); 

res = import_bbox_results( bb_results );

k=1;
for i=1: 5
%for i=1: 2
%    if (i/2 > maxbox)
%        break;
%    end
%    
%     if (mod(i,2) ~= 1)
%         plotOrientedIsobox(res{i}.X, res{i}.Y, res{i}.T)
%     end
    if (mod(i,2) == 1)
        
     R(:,:,k) = [res{i}.T(1:3,1:3)]
     palm_points(k,:) = [(res{i}.T(1:3,4)).'];
     k = k+1;
    end
    
end






end





