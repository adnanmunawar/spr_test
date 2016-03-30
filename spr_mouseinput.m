function spr_mouseinput()
clc;
close all;
clear all;
global startx starty
set (gcf, 'WindowButtonMotionFcn', @mouseMove);
itr = 100;
startx = 4;
starty = 3;
[x_mesh, y_mesh] = create_mesh_2D(2,0,itr);
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
for j=1:1000  
C = mouseMove;
x = C(1,1);
y = C(1,2);
clear_spr_plot;
[xout, yout] = intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
pause(0.02);
end
end

function C = mouseMove (object, eventdata)
C = get (gca, 'CurrentPoint');
end