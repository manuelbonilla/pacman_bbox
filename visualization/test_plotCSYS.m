plotCSYS(eye(4))

T = [rotx(45) zeros(3,1); zeros(1,3) 1];
xlabel('x');
ylabel('y');
zlabel('z');
grid on
axis equal
plotCSYS( T )