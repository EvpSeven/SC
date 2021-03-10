%%% Folha de Exercicios %%%
%%% Ex.1 c)
clear;
close all;
clc;

a = [0.1 1 10];
t = 0 : 0.001 : 50;

y1 = 1 - exp(-a(1)*t);
y2 = 1 - exp(-a(2)*t);
y3 = 1 - exp(-a(3)*t);

figure;
plot(t, y1, t, y2 ,t, y3);