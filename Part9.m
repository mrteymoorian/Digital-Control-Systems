clc
clear
Matrices = load('Matrices.mat');
A = Matrices.A; B = Matrices.B; C = Matrices.C; D = 0;
T = 4;
G = expm(A * T);
disp('G =')
disp(vpa(G, 8))
syms x
H = int(expm(A * x) * B(:, 2), 0, T);
disp('H =')
disp(vpa(H, 8))
M = [H, G*H, (G^2) * H];
disp('M:')
disp(vpa(M,4));
N = [C; C*G; C*G^2];
disp('N:')
disp(vpa(N,4));
save('Matrices_dicrete.mat', 'G', 'H', 'M', 'N');
fprintf('Rank(M) : %d \n', rank(M))
fprintf('Rank(N) : %d \n', rank(N))


