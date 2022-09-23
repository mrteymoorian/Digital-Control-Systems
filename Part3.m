clc
clear
s = tf('s');
kp = -9; ki = -0.001; kd = 0;
controller = kp + ki / s + kd * s;
T = 4;
controller_dig1 = c2d(controller, T, 'tustin')
controller_dig2 = c2d(controller, T, 'matched')

