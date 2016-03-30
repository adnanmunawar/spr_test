function plot_spr(x,xp,y,yp,xout,yout)
global h1 h2 h3 h4 h5
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[1 2],'Color','g');
h4 = plot(xout,yout,'r.','markersize',18);
h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
end