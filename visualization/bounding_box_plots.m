function bounding_box_plots(filename_object, bb_results)

[points] = import_shl(filename_object);

best_points = load(bb_results);

figure();
subplot(2,2,1); plot3(points(:,1), points(:,2), points(:,3),'*'); 
title('Original_objetc'); grid on
xlabel('x');  ylabel('y');  zlabel('z'); 
subplot(2,2,2); 
plot(points(:,1), points(:,2), '*'); title('xy projection'); 
grid on; hold on;
plot(best_points(1,1), best_points(1,2), 'r*');

subplot(2,2,3); 
plot(points(:,1), points(:,3), '*'); title('xz projection'); 
grid on; hold on;
plot(best_points(2,1), best_points(2,2), 'r*');

subplot(2,2,4); plot(points(:,2), points(:,3), '*'); title('yz projection'); 
grid on; hold on;
plot(best_points(3,1), best_points(3,2), 'r*');

