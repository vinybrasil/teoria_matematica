x = [-2:0.0001:2]
y = 7.*exp(-4.*x) + 3
plot(x,y), xlabel("x"), ylabel("y"), title("Gráfico do exp(-4x)");
grid on