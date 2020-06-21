%definindo o dominio 

[x, y] = meshgrid(-2:0.1:2,-2:.1:2); %do -2 ao 2, de 0.1 em 0.1

%funcao

z = x.*exp(-x.^2 - y.^2);

mesh(x, y, z)