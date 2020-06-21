x = -3:0.1:3; %de -3 até 3 de 0.1 em 0.1
y = x.^3;
plot(x,y)
hold on

for k=1:3
    y = x.^3 + 3*k;
    plot(x,y);
end 
hold off
