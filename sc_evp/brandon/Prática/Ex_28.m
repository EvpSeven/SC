%%% Folha de Exercicios %%%
%%% Ex. 28
clear;
close all;
clc;

Mp = 2.16; Vf = 2;
Po = (Mp - Vf)/Vf * 100;
tp = 2.43;

qsi = sqrt(log(Po/100)^2 / (pi^2 + log(Po/100)^2));
Wn = pi / (tp*sqrt(1-qsi^2));

A = Vf*Wn^2;

s = tf('s');
Gs = A / (s^2 + 2*qsi*Wn*s + Wn^2);

figure;
step(Gs);
grid on;