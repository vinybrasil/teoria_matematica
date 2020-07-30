
[x, y] = meshgrid(0:5:300, 0:5:300);


%parameters

alfa = 0.00099;
beta = 0.005;

delta = 0.0099;
gama = 0.009;



% defines ODE
dx = x*(alfa - beta*y); 
dy = y*(delta*x - gama);

% normalizes vectors
norm_factor = sqrt(dx.^2 + dy.^2);
dy_norm = dy./norm_factor;
dx_norm = dx./norm_factor;

quiver(x, y, dx_norm, dy_norm);