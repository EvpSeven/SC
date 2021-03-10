%%% Folha de Exercicios %%%
%%% Ex. 29
clear;
close all;
clc;

% Motor parameters
Jm = 1;
Jl = 0.1;
J = Jm + Jl;
R = 1.3;
L = 0.2;
Km = 1;
Kg = 0.1;
D = 0.1;

A = 1/100;
R1 = 1e3; R2 = 1e6;
Kr = 1 + R2/R1;
Wref = 200 * 2*pi/60;

s = tf('s');
Gs = Km / (Jm*L*s^2 + (Jm*R + D*L)*s + D*R + Km*Kg);

Ts = feedback(Kr*Gs, A);

figure;
step(A*Wref*Ts);
title('Sistema original');

C = 100e-6;
Kc = 1 + 1/(s*R1*C);
Ts = feedback(Kc*Gs, A);

figure;
step(A*Wref*Ts);
title('Sistema com condensador');