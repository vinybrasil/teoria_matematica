[s, p] = meshgrid(75:0.1:78, 0:0.1:2);
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



%ds = ((psi*b1)/(teta+psi*b2)).*s + ((1-psi*b1)/(teta+psi*b2)).*p -i_ext + (psi*b0 + psi*b1*p_ext - m)/(teta + psi*b2);
%dp = ((mi*teta*b1)/(teta + psi*b2)).*s +((-mi*teta*b1 -mi*b2)/(teta+psi*b2)).*p - mi*y_n + (mi*teta*b1*p_ext + mi*b0 + mi*b2*m)/(teta + psi*b2);

ds = (1/teta).*p -(1/teta)*m + (psi/teta)*y_n -i_ext
dp = -mi*b1.*p -mi*(b2/teta).*p + mi*b1.*s + mi*b0 + (mi*b2*m)/teta + mi*b1*p_ext -mi*i_ext -(mi*psi*b2*i_ext)*y_n 

norm_factor = sqrt(ds.^2 + dp.^2);
ds_norm = ds./norm_factor;
dp_norm = dp./norm_factor;

quiver(p,s,dp_norm,ds_norm)
axis tight

%quiver(p, e, dp_norm, de_norm);
%quiver(p, e)