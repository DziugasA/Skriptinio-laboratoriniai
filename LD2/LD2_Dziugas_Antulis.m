% 1. Vienmaciai masyvai
V = -pi/2:0.5:3*pi;
V2 = V.^2;
V3 = sin(V+V2);;
%% 
% 2. Dvimaciai masyvai
Z = rand([3, 3]);
Z(:,2) = [];
Z.';
%% 
% 3. Praktinis veiksmu su masyvais taikymas
A = 7;
f = 9;
d = 1.2;
U1 = 4.5;
U2 = 2.5;
t = 0:0.002:1;
n = d * randn(size(t));
s = A*cos(2*pi*f*t);
sU1 = s;
sU2 = s;
sU1 = sU1(sU1 > U1);
sU2(abs(sU2) < U2) = 0;
size(sU1);
sMax = max(sU2);;;
sMin = min(sU2);
%% 
%papildoma uzduotis
A = input('Iveskite vektoriu A([a1, a2..., an]): ')
B = [A(1:end), A(end:-1:1)];
disp("vektorius B yra: ")
disp(B)