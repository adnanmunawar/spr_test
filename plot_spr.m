function plot_spr(x,xp,y,yp,xout,yout)
global h1 h2 h3 h4 h5 h6;
h1 = plot(x,y,'r.','markersize',18);
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[y-1 y+1],'--black');
h4 = plot(xout,yout,'r.','markersize',18);
xtemp = zeros(numel(xout),2);
ytemp = zeros(numel(yout),2);
if (numel(xout)>=1)
for i=1:numel(xout)
    xtemp(i,:) = [xout(i) x];
    ytemp(i,:) = [yout(i) y];
end
x_radi = reshape(xtemp.',[1,numel(xtemp)]);
y_radi = reshape(ytemp.',[1,numel(ytemp)]);
x_proj = reshape(xtemp,[1,numel(xtemp)]);
y_proj = reshape(ytemp,[1,numel(ytemp)]);
if (numel(xout)==1)
    h5 = plot([xout(1) x],[yout(1) yout(1)],'Color','m');
else
    h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
end
h6 = plot(x_radi,y_radi,'-black');
end
end