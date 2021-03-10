%%% Folha de Exercicios %%%
%%% Ex. 31
clear;
close all;
clc;

s = tf('s');
Gs = 1 / ((s+1)*(s+2));

K = 4.26;
Ts = feedback(K*Gs, 1);

figure;
step(Ts);