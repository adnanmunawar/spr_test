%% Author: Adnan Munawar
% AIM Lab, WPI, USA
% Email: amunawar@wpi.edu
clc;
close all;
clear all;
global startx starty
itr = 100;
startx = 4;
starty = 2.5;
[x_mesh, y_mesh] = create_mesh_2D(itr);
plot(x_mesh,y_mesh,'Color','green','LineWidth',2);
axis equal
grid on;
hold on;
r=1;
[x_spr, y_spr] = create_spr_2D(r);
x = startx;
y = starty;
[xout, yout] =intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
for j=1:5   
x = startx;
y = starty;
for i=1:itr
clear_spr_plot;
x=x+(1/itr);
[xout, yout] = intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
pause(0.02);
end
disp('Backward Pass');
for i=itr:-1:1
clear_spr_plot;
x=x-(1/itr);
[xout, yout] =intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
pause(0.02);
end
end
