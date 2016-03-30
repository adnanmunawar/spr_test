%% Author: Adnan Munawar
% AIM Lab, WPI, USA
% Email: amunawar@wpi.edu
clc;
close all;
clear all;
global h1 h2 h3 h4 h5;
itr = 100;
body1 = linspace(2-(2/(itr/2)),0,(itr/2));
body1 = [ones(1,(itr/2))*2,body1];
hor = linspace(1,10,itr);
plot(hor,body1)
axis equal

hold on;
r=1;
ang=0:0.01:2*pi; 
xp=r*cos(ang);
yp=r*sin(ang);
x = 4.5;
y = 2;
[xout, yout] =intersections(hor,body1,x+xp,y+yp,1);
plot_spr(x,xp,y,yp,xout,yout)
for j=1:5   
x = 4.5;
y = 2;
for i=1:itr
clear_spr_plot;
x=x+(1/itr);
[xout, yout] =intersections(hor,body1,x+xp,y+yp,1)
plot_spr(x,xp,y,yp,xout,yout)
pause(0.02);
end
disp('Backward Pass');
for i=itr:-1:1
clear_spr_plot;
x=x-(1/itr);
[xout, yout] =intersections(hor,body1,x+xp,y+yp,1);
plot_spr(x,xp,y,yp,xout,yout);
pause(0.02);
end
end
