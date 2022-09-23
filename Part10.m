clc
clear
Matrices = load('Matrices_dicrete.mat');
G = Matrices.G; H = Matrices.H; M = Matrices.M; N = Matrices.N;
%% First Method
syms z
Char_eq = det(z*eye(3) - G);
ce = coeffs(Char_eq);
disp('Characteristic Equation Coefficients:')
disp(vpa(ce, 6))
a3 = ce(1); a2 = ce(2); a1 = ce(3);
fprintf('a1 = %f, a2 = %f, a3 = %f \n', a1, a2, a3)
W = [a2, a1, 1;
     a1, 1, 0;
     1, 0, 0];
T = M * W;
K_hat = -[a3, a2, a1];
K = K_hat * inv(T);
disp('K:')
disp(vpa(K, 6))
%% Second Method: Ackerman
phi_G = G^3;
K_ackerman = [0 0 1] * inv(M) * phi_G;
disp('K_ackerman:')
disp(vpa(K_ackerman, 6))

