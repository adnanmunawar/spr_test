function plot_spr(x,xp,y,yp,xout,yout)
global h1 h2 h3 h4 h5 h6;
h1 = plot(x,y,'r.','markersize',18)
h2 = plot(x+xp,y+yp);
h3 = plot([x x],[1 2],'Color','black');
h4 = plot(xout,yout,'r.','markersize',18);
h5 = plot([xout(1) x x xout(2)],[yout(1) yout(1) yout(2) yout(2)],'Color','m');
h6 = plot([xout(1) x xout(2)],[yout(1) y yout(2)],'Color','black');
end