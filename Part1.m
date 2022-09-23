clc
clear
s = tf('s');
Ib = 15; p1 = 0; p2 = 0.025; p3 = 0.000013; Gb = 4.5; v = 12; n = 5.54/60; 
D = 0; u = n * v * Ib;
I_e = 0; X_e = 0; G_e = 0;

A = [-p1-X_e, -(G_e + Gb), 0;
     0, -p2, p3;
     0, 0, -n];
B = [1 0;0 0;0 1/12];
C = [1 0 0];
C * inv(s*eye(3) - A) * B;

save('Matrices.mat', 'A', 'B', 'C');

H = tf([-4.875e-06], [1, 0.1173, 0.002308, 1.218e-20]);
vpa(pole(H));
