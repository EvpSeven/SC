%%% Folha de Exercicios %%%
%%% Ex. 27
clear;
close all;
clc;

L = 0.1e-3;
C = 10e-6;

qsi = 1;
R1 = 2*qsi * sqrt(L/C);		% Criticamente amortecido
R2 = 2 * R1;	% Sobre-amortecido
R3 = R1 / 2;	% Sub-amortecido

s = tf('s');
Gs1 = 1 / (L*C*s^2 + R1*C*s + 1);
Gs2 = 1 / (L*C*s^2 + R2*C*s + 1);
Gs3 = 1 / (L*C*s^2 + R3*C*s + 1);

figure;
step(10*Gs1, 10*Gs2, 10*Gs3);
legend(['R1 = ', num2str(R1)], 'R2 = 2*R1', 'R3 = R1/2');

% d)
Po = 20;
tr = 50e-6;

qsi = sqrt(log(Po/100)^2 / (pi^2 + log(Po/100)^2));
Wn = (0.8 + 2.5*qsi) / tr;

C = 1 / (L*Wn^2);
R = 2*qsi * sqrt(L/C);

Gs = 1 / (L*C*s^2 + R*C*s + 1);

figure;
step(10*Gs);