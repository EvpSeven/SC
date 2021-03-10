%%% Folha de Exercicios %%%
%%% Ex.2 b)
clear;
close all;
clc;

a = [0.1 1 10];
b = [0.2 2 12];
t = 0 : 0.01 : 10;

y1 = b(1) / (a(1)-b(1)) * exp(-a(1)*t) + a(1) / (b(1)-a(1)) * exp(-b(1).*t) + 1;
y2 = b(2) / (a(2)-b(2)) * exp(-a(2)*t) + a(2) / (b(2)-a(2)) * exp(-b(2).*t) + 1;
y3 = b(3) / (a(3)-b(3)) * exp(-a(3)*t) + a(3) / (b(3)-a(3)) * exp(-b(3).*t) + 1;

figure;
plot(t, y1, t, y2, t, y3);

%%% alternativa
s = tf('s');
a = [0.1 1 10];
b = [0.2 2 12];

Gs1 = a(1)*b(1) / ((s+a(1)) * (s+b(1)));
Gs2 = a(2)*b(2) / ((s+a(2)) * (s+b(2)));
Gs3 = a(3)*b(3) / ((s+a(3)) * (s+b(3)));

figure;
step(Gs1, Gs2, Gs3);
