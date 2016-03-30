function[x_mesh, y_mesh] = create_mesh_2D(level, intercept, itr)
if mod(itr,2) == 0
if intercept <= 0
    y_mesh = linspace(level-(level/(itr/2)),intercept,(itr/2)-1);
else
    y_mesh = linspace(level+(level/(itr/2)),intercept,(itr/2)-1);
end
else
if intercept <= 0
    y_mesh = linspace(level-(level/(itr/2)),intercept,(itr/2));
else
    y_mesh = linspace(level+(level/(itr/2)),intercept,(itr/2));
end    
end
y_mesh = [ones(1,(itr/2))*level,y_mesh];
x_mesh = linspace(0,10,numel(y_mesh));
end