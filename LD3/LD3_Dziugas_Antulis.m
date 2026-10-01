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

