%solve ODE sem restrições

%representar y(t) com a função symbolica

syms y(t)

%definir a equação com a função diferenciação

ode = diff(y,t) == t*y;

%solving 
ySol(t) = dsolve(ode);
disp(ySol(t));

%solve ODE com restrições

cond = y(0) == 2;
ySol(t) = dsolve(ode,cond);