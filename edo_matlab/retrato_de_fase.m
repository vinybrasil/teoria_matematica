
[x, y] = meshgrid(-3:.3:3, -2:.3:2);

% defines ODE
dy = x + sin(y); 
dx = ones(size(dy));

% normalizes vectors
norm_factor = sqrt(dx.^2 + dy.^2);
dy_norm = dy./norm_factor;
dx_norm = dx./norm_factor;

quiver(x, y, dx_norm, dy_norm);