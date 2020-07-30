%%aqui tem a linha

[x,y] = meshgrid(0:0.2:3,-1:0.2:3);
d = 5*y - 3*x;
l = sqrt(1+d.^2);
quiver(x,y,1./l,d./l)
axis tight

hold on

fplot(@(a) (1/25) * (3 + 15*a),[0 3],'g')