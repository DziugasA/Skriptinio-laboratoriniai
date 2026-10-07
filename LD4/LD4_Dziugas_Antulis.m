% 1. Trimatis grafiku vaizdavimas 
% a)
clear
close all
r = linspace(0, 1);
theta = linspace(0, 2*pi);
[R, T] = meshgrid(r, theta);

x = R .* cos(T);
y = R .* sin(T);
f = 1 - 2*x.^2 - 3*y.^2;

surf(x, y, f);
colormap(jet);
shading interp;
colorbar;

view(50, 30);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
grid on;
%% 
% b)
clear
close all
x = 
