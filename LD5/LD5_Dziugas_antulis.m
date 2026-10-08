% 1 Strukturos
% a ir b)
clear
vardas = 'vardas'; vardasR = {'Dziugas', 'Jonas', 'Petras'};
pavarde = 'pavarde'; pavardeR = {'Antulis', 'Jonaitis', 'Petraitis'};
grupe = 'grupe'; grupeR = {'EB-28/1', 'EC-23/5', 'ED-24/2'};
pazymiai = 'pazymiai'; pazymiaiR = zeros(1,10);
studentai = struct(vardas, vardasR, pavarde, pavardeR, grupe, grupeR, pazymiai, pazymiaiR);
studentai(1).pazymiai(2) = 10;
studentai(1)
%% 
% 2 srauto valdymo konstruktoriai
clear
m = input("Iveskite m: ");
n = input("Iveskite n: ");
did = max(m, n);
maz = min(m, n);
while did >= maz
    did = did - maz;
end
disp(did)

m = input("Iveskite m: ");
n = input("Iveskite n: ");
while m ~= n
    disp("Is naujo");
    m = input("Iveskite m: ");
    n = input("Iveskite n: ");
end
disp("Sutampa");

