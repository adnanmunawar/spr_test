%% Author: Adnan Munawar
% AIM Lab, WPI, USA
% Email: amunawar@wpi.edu
clc;
close all;
clear all;
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
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[1 2],'Color','g');
h4 = plot(xout,yout,'r.','markersize',18);
h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
for j=1:5   
x = 4.5;
y = 2;
for i=1:itr
delete(h2);
delete(h3);
delete(h4);
delete(h5);
x=x+(1/itr);
[xout, yout] =intersections(hor,body1,x+xp,y+yp,1)
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[1 2],'Color','g');
h4 = plot(xout,yout,'r.','markersize',18);
h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
%viscircles([x y], r,'Color','b');
pause(0.02);
end
disp('Backward Pass');
for i=itr:-1:1
delete(h2);
delete(h3);
delete(h4);
delete(h5);
x=x-(1/itr);
[xout, yout] =intersections(hor,body1,x+xp,y+yp,1);
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[1 2],'Color','g');
h4 = plot(xout,yout,'r.','markersize',18);
h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
%viscircles([x y], r,'Color','b');
pause(0.02);
end
end
