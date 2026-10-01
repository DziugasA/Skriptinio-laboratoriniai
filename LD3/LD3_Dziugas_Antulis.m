% 1. Dvimatis grafiku vaizdavimas
% a)
t = linspace(-pi, pi, 50);
y = sin(t);
figure;
stem(y,"r");
xlabel("X");
ylabel("Y");
grid on;

% b)
x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2.*x.^2 -9;
figure
plot(x, y1, x, y2)
axis([-pi, pi, min(y2), max(y1)])
xlabel("X");
ylabel("Y");
grid on;


