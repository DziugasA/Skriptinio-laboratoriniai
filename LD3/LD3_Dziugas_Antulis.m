% 1. Dvimatis grafiku vaizdavimas
% a)
t = linspace(-pi, pi, 50);
y = sin(t);
figure;
stem(y,"r");
xlabel("X");
ylabel("Y");
legend("y = sin(t)");
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
legend("y = -x.^2 + 9", "y = x.^3 - 2.*x.^2 -9")
grid on;
%% 
% 2. Specializuotu grafiku kurimas
pazymiai = randi([0, 10], 6, 4);
subplot(2, 1, 1);
bar(pazymiai);
xlabel("I.d");
ylabel("p");
title("a)");
legend("A.B.", "C.D.","E.F.","G.H.","I.J.","K.L.")
subplot(2, 1, 2);
stem(mean(pazymiai, 2));
xlabel("Studentas");
ylabel("p");
title("b)");
%% 
% Papildoma uzduotis P.Signalu atvaizdavimas
A = 7;
f = 9;
d = 1.2;
U1 = 4.5;
U2 = 2.5;
t = 0:0.002:1;
n = d * randn(size(t));
s = A*cos(2*pi*f*t) + n;
sU1 = s;
sU2 = s;
sU1 = sU1(sU1 > U1);
sU2(abs(sU2) < U2) = 0;
size(sU1);
sMax = max(sU2);
sMin = min(sU2);

figure();
subplot(2, 1, 1);
plot(t, s, "b-o", t, sU2, "g");
yline(U1);
yline(U2, "g", "LineWidth", 1.25);
title("Filtruotas/Nefiltruotas")
xlabel("t", "Color", "b", "FontSize", 14);
ylabel("U", "Color", "b", "FontSize", 14);

[MaxY, MaxIdx] = max(sU1);
[MinY, MinIdx] = min(sU1);
subplot(2, 1, 2);
stem(sU1);
hold on;
plot(MaxIdx, MaxY, "^", MinIdx, MinY, "r^")
title("U1 virsijimas")
xlabel("t", "Color", "b", "FontSize", 14);
ylabel("U", "Color", "b", "FontSize", 14);
