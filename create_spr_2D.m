function[x_spr, y_spr] = create_spr_2D(r)
ang=0:0.01:2*pi; 
x_spr=r*cos(ang);
y_spr=r*sin(ang);
end