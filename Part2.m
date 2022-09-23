clc
clear
s = tf('s');
H = tf([-4.875e-06], [1, 0.1173, 0.002308, 1.218e-20]);
H_cl = feedback(H,1);
pole(H_cl);
kp = -9; ki = -0.001; kd = 0;
controller = kp + ki / s + kd * s
rlocus(H * controller)
