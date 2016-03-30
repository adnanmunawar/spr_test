function spr_mouseinput()
clc;
close all;
clear all;
global startx starty clicked
clicked = false;
set (gcf, 'WindowButtonMotionFcn', @mouseMove);
itr = 100;
startx = 4;
starty = 3;
[x_mesh, y_mesh] = create_mesh_2D(2,0,itr);
plot(x_mesh,y_mesh,'Color','green','LineWidth',2);
title('Click any mouse button to exit');
set(gcf,'WindowButtonDownFcn',@mytestcallback)
%axis([0 10 -3 7]);
axis equal
grid on;
hold on;
r=1;
[x_spr, y_spr] = create_spr_2D(r);
x = startx;
y = starty;
[xout, yout] =intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
while(clicked == false)
C = mouseMove;
x = C(1,1);
y = C(1,2);

if x > 20
    x = 20;
elseif x < -10
    x = -10;
end
if y > 10
    y = 10;
elseif y < -10
    y = -10;
end

clear_spr_plot;
[xout, yout] = intersections(x_mesh,y_mesh,x+x_spr,y+y_spr,1);
plot_spr(x,x_spr,y,y_spr,xout,yout);
pause(0.02);
end
end

function C = mouseMove (object, eventdata)
C = get (gca, 'CurrentPoint');
end

function mytestcallback(hObject,~)
global clicked;
pos=get(hObject,'CurrentPoint');
disp('Exiting on Click');
clicked = true;
end