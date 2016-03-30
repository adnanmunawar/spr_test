%% Author: Adnan Munawar
% AIM Lab, WPI, USA
% Email: amunawar@wpi.edu
clc;
close all;
clear all;
itr = 100;
[x_mesh, y_mesh] = create_mesh_2D(itr)
plot(x_mesh,y_mesh,'Color','green')
axis equal
grid on;
hold on;
r=1;
[x_spr, y_spr] = create_spr_2D(r)
x = 4.5;
y = 2;
[xout, yout] =intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
for j=1:5   
x = 4.5;
y = 2;
for i=1:itr
clear_spr_plot;
x=x+(1/itr);
[xout, yout] = intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout)
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
