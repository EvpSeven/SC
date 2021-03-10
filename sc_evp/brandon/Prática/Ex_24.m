%%% Folha de Exercicios %%%
%%% Ex. 24
clear;
close all;
clc;

% b)
s = tf('s');
K1 = 0.5;
K2 = 1;
K3 = 5;

Gs = 1 / (s*(s+2));

% Realimentação positiva
Ts_1 = feedback(K1 * Gs, 1);
Ts_2 = feedback(K2 * Gs, 1);
Ts_3 = feedback(K3 * Gs, 1);

figure;
step(Ts_1, Ts_2, Ts_3);
legend(['K = ' num2str(K1)], ['K = ' num2str(K2)], ['K = ' num2str(K3)]);

% c)
Po = 30;	% Sobrelevação (%)
qsi = sqrt(log(Po/100)^2 / (pi^2 + log(Po/100)^2));
K = 1 / qsi^2;

Ts = feedback(K * Gs, 1);
figure;
step(Ts);
legend(['K = ', num2str(K)]);