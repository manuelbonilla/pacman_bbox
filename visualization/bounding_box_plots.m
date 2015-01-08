function bounding_box_plots(filename_object, bb_results)

[points] = import_shl(filename_object);

 

figure();
plot3(points(:,1), points(:,2), points(:,3),'*'); 
title('Original_object'); grid on

plotCSYS(eye(4), .12);
xlabel('x');  ylabel('y');  zlabel('z'); 

res = import_bbox_results( bb_results );

for i=1: size(res,2)
   
    plotOrientedIsobox(res{i}.X, res{i}.Y, res{i}.T)
    pause
    %plotCSYS(res{i}.T, .12);
    
end

end





