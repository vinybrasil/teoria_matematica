%===========na forma de equações========================

syms u(t) v(t)

ode1 = diff(u) == 3*u + 4*v;
ode2 = diff(v) == -4*u + 3*v;
odes = [ode1; ode2];

S = dsolve(odes);

[uSol(t), vSol(t)] = dsolve(odes);

%ou uSol(t) = S.u;
%   vSol(t) = S.v;


%resolvendo com as condições iniciais

cond1 = u(0) == 0;
cond2 = v(0) == 1;
conds = [cond1; cond2];
[uSol(t), vSol(t)] = dsolve(odes,conds)

%plottando

fplot(uSol)
hold on
fplot(vSol)
grid on
legend('uSol','vSol','Location','best')


%===============da forma matricial=========================

%sistemas da forma X' = AX + B

syms x(t) y(t)
A = [1 2; -1 1];
B = [1; t];
Y = [x; y];
odes = diff(Y) == A*Y + B;

%resolvendo e simplificando

[xSol(t), ySol(t)] = dsolve(odes);
xSol(t) = simplify(xSol(t));
ySol(t) = simplify(ySol(t));

%condiões iniciais

C = Y(0) == [2; -1];
[xSol(t), ySol(t)] = dsolve(odes,C);

disp(xSol(t));
disp(ySol(t));

clf
fplot(ySol)
hold on
fplot(xSol)
grid on
legend('ySol','xSol','Location','best')