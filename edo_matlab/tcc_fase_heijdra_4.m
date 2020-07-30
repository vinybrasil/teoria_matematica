
p = [0 : 1: 1000]; %pra fazer a linha
e = [0 : 1: 1000];

mi = 0.01;
b1 = -0.7;
b2 = 0.1;
teta = 0.5;
psi = -0.20;
b0 = 500;
m = 100;
y_n = 2000;
i_ext = 3;
p_ext = 0;



e_0 = -p_ext + ((-1+psi*b1)*p -psi*b0 +m + i_ext*teta + i_ext*psi*b2)/(psi*b1) 
p_0 = -p_ext + ((b2+teta*b1)*p -teta*b0 - b2*m + y_n*teta + y_n*psi*b2)/(teta*b1)
plot(p, e_0, p, p_0), xlabel('p'),ylabel('e'), axis([0 2 75 77])