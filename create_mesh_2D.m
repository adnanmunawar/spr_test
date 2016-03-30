function[x_mesh, y_mesh] = create_mesh_2D(itr)
level = 2;
intercept = -3;
if level <= 0
    y_mesh = linspace(level-(2/(itr/2)),intercept,(itr/2));
else
    y_mesh = linspace(level+(2/(itr/2)),intercept,(itr/2));
end
y_mesh = [ones(1,(itr/2))*level,y_mesh];
x_mesh = linspace(1,10,itr);
end