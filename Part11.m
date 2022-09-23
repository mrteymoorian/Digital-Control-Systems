clc
clear
%% Calculate L
Matrices = load('Matrices_dicrete.mat');
G = Matrices.G; H = Matrices.H; M = Matrices.M; N = Matrices.N;
phi_G = G^3;
L = phi_G * inv(N) * [0; 0; 1];
disp('L:')
disp(vpa(L, 10))
%% Calculate G_bar
K = [0 0 1] * inv(M) * phi_G;
temp = load('Matrices.mat');
C = temp.C;
G_bar = G - H * K - L * C;
disp('G_bar:')
disp(vpa(G_bar, 10))