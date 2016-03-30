function[x_mesh, y_mesh] = create_mesh_2D(itr)
y_mesh = linspace(2-(2/(itr/2)),0,(itr/2));
y_mesh = [ones(1,(itr/2))*2,y_mesh];
x_mesh = linspace(1,10,itr);
end