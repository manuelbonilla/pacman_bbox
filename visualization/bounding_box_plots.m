function bounding_box_plots(filename_object, bb_results)

[points] = import_shl(filename_object);

% best_points = load(bb_results);
% 
figure();
plot3(points(:,1), points(:,2), points(:,3),'*'); 
title('Original_objetc'); grid on

plotCSYS(eye(4), .12);
xlabel('x');  ylabel('y');  zlabel('z'); 

res = import_bbox_results( bb_results );


%%%%%%%%%%%%%%%%%%%%55
% plotOrientedIsobox(res{1}.X, res{1}.Y, eye(4))
% pointspca = (inv(res{1}.T)*([points ones(size(points,1),1)].')).';
% hold on
% plot3(pointspca(:,1), pointspca(:,2), pointspca(:,3),'r*'); 
% plotOrientedIsobox(res{1}.X, res{1}.Y, eye(4))

for i=1: size(res,2)
   
    plotOrientedIsobox(res{i}.X, res{i}.Y, res{i}.T)
    plotCSYS(res{i}.T, .12);
    
end


% P1 = import_subpoints('../build/points1.txt');
% P2 = import_subpoints('../build/points2.txt');
% 
% hold on
% 
% 
% P1 = (res{2}.T*([P1 ones(size(P1,1),1)].')).';
% P2 = (res{3}.T*([P2 ones(size(P2,1),1)].')).';
% 
% plot3(P1(:,1), P1(:,2), P1(:,3),'go'); 
% plot3(P2(:,1), P2(:,2), P2(:,3),'mo'); 
axis equal


% plot3(points(:,1), points(:,2), points(:,3),'*');



% 
% figure
% data = points;
% m = mean(data);
% hold on;
% plot3(m(1), m(2), m(3), 'r*')
% data_m = data - repmat(m, length(data), 1);
% m_m = mean(data_m);
% 
% %plot3(data_m(:,1), data_m(:,2), data_m(:,3),'g*')
% 
% 
% N = size(data, 1);
% covar = data_m'*data_m/N
% 
% 
% [U,S,V] = svd(covar)
% % 
% % 
% % 
% % data_r = data_m*V; % rotated data
% % 
% % 
% % plot3(data_r(:,1), data_r(:,2), data_r(:,3), 'm*');
% % 
% T2 = [V m.'; zeros(1,3) 1]
% data_recover = (T*([data_r ones(size(data_r,1),1)].')).';
% 
% plot3(data_recover(:,1), data_recover(:,2), data_recover(:,3), 'ro');
% 
% legend('Original Data','Translated Data','Translated and rotated data', 'Recovered data')

% plot3(data(:,1), data(:,2), data(:,3),'b*')
% plot3(m_m(1), m_m(2), m_m(3), 'r*')









% subplot(2,2,2); 
% plot(points(:,1), points(:,2), '*'); title('xy projection'); 
% grid on; hold on;
% plot(best_points(1,1), best_points(1,2), 'r*');
% 
% subplot(2,2,3); 
% plot(points(:,1), points(:,3), '*'); title('xz projection'); 
% grid on; hold on;
% plot(best_points(2,1), best_points(2,2), 'r*');
% 
% subplot(2,2,4); plot(points(:,2), points(:,3), '*'); title('yz projection'); 
% grid on; hold on;
% plot(best_points(3,1), best_points(3,2), 'r*');
% 
% subplot(2,2,1); hold on; 

%plot3isobox([best_points(4,1) best_points(4,2) best_points(4,3)],...
 %   [best_points(4,4) best_points(4,5) best_points(4,6)], 0, [1 0 0]);
            
%plot3isobox([best_points(5,1) best_points(5,2) best_points(5,3)],...
 %   [best_points(5,4) best_points(5,5) best_points(5,6)], 0, [1 0 0]);

% plot3isobox([best_points(6,1) best_points(6,2) best_points(6,3)],...
%     [best_points(6,4) best_points(6,5) best_points(6,6)], .5, [1 0 0]);

end





