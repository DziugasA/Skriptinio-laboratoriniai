% 1. Vienmaciai masyvai
V = -pi/2:0.5:3*pi;
V2 = V.^2;
V3 = sin(V+V2)
%% 
% 2. Dvimaciai masyvai
Z = rand([3, 3]);
Z(:,2) = [];
Z.'
