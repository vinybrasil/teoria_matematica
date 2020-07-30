%[e, p] = meshgrid(77:0.1:79, 1:0.1:2  );
p = [0 : 0.01: 5]; %pra fazer a linha
e = [75 : 0.01: 80];
mi = 0.01;
b1 = 20;
b2 = 0.1;
teta = 0.5;
psi = 0.05;
b0 = 500;
m = 101;
y_n = 2000;
i_ext = 3;
p_ext = 0;

%heijdra:

%de = ((psi*b1)/(teta+psi*b2))*e + ((1-psi*b1)/(teta+psi*b2))*p -i_ext + (psi*b0 + psi*b1*p_ext - m)/(teta + psi*b2);
%dp = ((mi*teta*b1)/(teta + psi*b2))*e +((-mi*teta*b1 -mi*b2)/(teta+psi*b2))*p - mi*y_n + (mi*teta*b1*p_ext + mi*b0 + mi*b2*m)/(teta + psi*b2);

%bongers:

de = (1/teta).*p -(1/teta)*m + (psi/teta)*y_n -i_ext
dp = -mi*b1*p -mi*(b2/teta).*p + mi*b1*e + mi*b0 + (mi*b2*m)/teta + mi*b1*p_ext -mi*i_ext -(mi*psi*b2*i_ext)*y_n 

norm_factor = sqrt(de.^2 + dp.^2);
de_norm = de./norm_factor;
dp_norm = dp./norm_factor;

#quiver(e, p, de_norm, dp_norm, d./l);
quiver(p, e, dp_norm, de_norm);

e_0 = -p_ext + ((-1+psi*b1)*p -psi*b0 +m + i_ext*teta + i_ext*psi*b2)/(psi*b1) 
p_0 = -p_ext + ((b2+teta*b1)*p -teta*b0 - b2*m + y_n*teta + y_n*psi*b2)/(teta*b1)
plot(p, e_0, p, p_0), xlabel('p'),ylabel('e'), axis([0 2 75 77])
