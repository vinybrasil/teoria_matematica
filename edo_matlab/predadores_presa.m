
[x, y] = meshgrid(0:5:200, 0:5:200);

%parameters

alfa = 0.03;
beta = 0.02;

delta = 0.06;
gama = 0.01;


% defines ODE
dx = x*(alfa - beta*y); 
dy = y*(delta*x - gama);

% normalizes vectors
norm_factor = sqrt(dx.^2 + dy.^2);
dy_norm = dy./norm_factor;
dx_norm = dx./norm_factor;

quiver(x, y, dx_norm, dy_norm);