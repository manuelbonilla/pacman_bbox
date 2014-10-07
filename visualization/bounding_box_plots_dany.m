function bounding_box_plots_dany(filename_object, bb_results)

[points] = import_shl(filename_object);

best_points = load(bb_results);

figure();
subplot(2,2,1); 
plot3(points(:,1), points(:,2), points(:,3),'*'); 

title('Original Objetc'); grid on
xlabel('x','FontSize',14); 
ylabel('y'); 
zlabel('z'); 



subplot(2,2,2); 
plot(points(:,1), points(:,2), '*'); title('xy Projection'); 
grid on; hold on;
line([best_points(1,1),best_points(1,1)],[best_points(1,2),best_points(1,2)],'Color','r','LineWidth',2,'Marker','o');
yy=ylim;
xx=xlim;
line(xx,[best_points(1,2),best_points(1,2)],'Color','k','LineWidth',2,'LineStyle','-.');


subplot(2,2,3); 
plot(points(:,1), points(:,3), '*'); title('xz Projection'); 
grid on; hold on;
plot(best_points(2,1), best_points(2,2), 'r*');

yy=ylim;
xx=xlim;
line([best_points(2,1),best_points(2,1)],yy,'Color','k','LineWidth',2,'LineStyle','-.');
line(best_points(2,1), best_points(2,2),'Color','r','LineWidth',2,'Marker','o');

subplot(2,2,4); plot(points(:,2), points(:,3), '*'); title('yz Projection'); 
grid on; hold on;
plot(best_points(3,1), best_points(3,2), 'r*');
yy=ylim;
xx=xlim;
line([best_points(3,1),best_points(3,1)],yy,'Color','k','LineWidth',1.5,'LineStyle','-.');
line(best_points(3,1), best_points(3,2),'Color','r','LineWidth',2,'Marker','o');

subplot(2,2,1); hold on; 

plot3isobox([best_points(4,1) best_points(4,2) best_points(4,3)],...
    [best_points(4,4) best_points(4,5) best_points(4,6)], 0, [1 0 0]);
            
plot3isobox([best_points(5,1) best_points(5,2) best_points(5,3)],...
    [best_points(5,4) best_points(5,5) best_points(5,6)], 0, [1 0 0]);


saveas(gcf,'prova')






