syms x(t) y(t)

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

a = (psi*b1)/(teta+psi*b2);
b = (1-psi*b1)/(teta+psi*b2);
c = (mi*teta*b1)/(teta + psi*b2);
d = -(mi*teta*b1 + mi*b2)/(teta+psi*b2);
e = -i_ext + (psi*b0 + psi*b1*p_ext - m)/(teta + psi*b2);
f = -mi*y_n + (mi*teta*b1*p_ext + mi*b0 + mi*b2*m)/(teta + psi*b2);

A = [a b; c d]; %a primeira é e e segunda é p
B = [e; f];
Y = [x; y];
odes = diff(Y) == A*Y + B;


[xSol(t), ySol(t)] = dsolve(odes);
xSol(t) = simplify(xSol(t));
ySol(t) = simplify(ySol(t));

disp(xSol(t))
disp(ySol(t))

C = Y(0) == [80,1.5];
[xSol(t), ySol(t)] = dsolve(odes,C);

disp(xSol(t));
disp(ySol(t));

clf
fplot(ySol)
hold on
fplot(xSol)
grid on
legend('ySol','xSol','Location','best')