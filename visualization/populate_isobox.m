

clear all
close all

s = 1;
res = load('../build/results.txt');
figure; hold on
plotOrientedIsobox([-1.5;-2;-1], [1.5;2;1], eye(4), 'r')
for i = 1:size(res,1)/4
    res1(:,:,i) = res(s:s+3,:);
    s = s+4;
    % 1 4
    % 5 8
    plotCSYS(res1(:,:,i),.1)
end
plotCSYS(eye(4),1)
xlabel('x')
ylabel('y')
zlabel('z')











