[p, e] = meshgrid(0:0.2:10, 0:0.2:10);

%parameters

mi = 0.01;
b1 = 20;
b2 = 0.1;
teta = 0.5;
psi = 0.05;
b0 = 500;
m = 100;
y_n = 2000;
i_ext = 3;
p_ext = 0;

% defines ODE
%dx = x*alfa + beta*y + delta; 
%dy = y*gama + psi*x + qui;

dp = - mi*(b1 + b2/teta)*p + mi*b1*e + mi*b0 + mi*(b2/teta)*m - mi*(1 + psi*b2/teta)*y_n + mi*b1*p_ext
de = p*(1/teta) - (1/teta)*m + (psi/teta)*y_n -i_ext

% normalizes vectors
norm_factor = sqrt(de.^2 + dp.^2);
de_norm = de./norm_factor;
dp_norm = dp./norm_factor;

quiver(e, p, de_norm, dp_norm);
%quiver(x, y, dx, dy);