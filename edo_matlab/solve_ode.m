%solve ODE sem restri��es

%representar y(t) com a fun��o symbolica

syms y(t)

%definir a equa��o com a fun��o diferencia��o

ode = diff(y,t) == t*y;

%solving 
ySol(t) = dsolve(ode);
disp(ySol(t));

%solve ODE com restri��es

cond = y(0) == 2;
ySol(t) = dsolve(ode,cond);