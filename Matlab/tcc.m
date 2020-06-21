%endogenas
var p s yd i dp ds;
%exogenas
varexo m, beta0, ypot, pstar, istar;
%parametros
parameters psi, theta, beta1, beta2, mi;
%calibration
theta = 0.5;
psi = 0.05;
beta1 = 20;
beta2 = 0.1;
mi = 0.001;

%equacoes
model;
  m - p = psi*ypot-theta*i;
  yd = beta0+beta1*(s-p+pstar)-beta2*i;
  dp = mi*(yd-ypot);
  ds = i-istar;
  dp(-1) = p-p(-1);
  ds  = s(+1)-s;
end;

%valores iniciais

initval;
  yd = ypot0;
  p = 1;
  s = 10;
  i = 3;
  dp = 0;
  ds = 0;
  m = 100;
  beta0 = 500;
  ypot = 2000;
  pstar = 0;
  istar = 3;
end;

%initial steady state
steady;
check;
%fim dos valores
endval;
  yd = ypot0;
  p = 1;
  s = 10;
  i = 3;
  dp = 0;
  ds = 0;
  m = 101;
  beta0 = 500;ypot = 2000;
  pstar = 0;
  istar = 3;
end;
%final steady state
steady;
%disturbios
shocks;
  var m;
  periods 0;
  values 0;
end;
%simulatcoa deterministica

simul(periods=30);
%graficamentes
T=15;
j=1:T;
subplot(2,2,1)
plot(j,s(1:T), 'Color',[0.25 0.25 0.25], 'linewidth', 3.5)
xlabel('Periods')
title('Nominal exchange rate')
subplot(2,2,2)
plot(j, yd(1:T), 'Color', [0.25 0.25 0.25], 'linewidth', 3.5)
xlabel('Periods')
title('Aggregate Demand')
subplot(2,2,3)



