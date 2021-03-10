%%% Folha de Exercicios %%%
%%% Ex. 26
clear;
close all;
clc;

a1 = 4.79; b1 = 19.20;
a2 = 0.21; b2 = 0.83;

s = tf('s');
Ts1 = b1 / (s^2 + (a1+1)*s + a1 + b1);
Ts2 = b2 / (s^2 + (a2+1)*s + a2 + b2);

figure;
step(Ts1, Ts2);
legend(['a = ' num2str(a1) ' b = ' num2str(b1)], ['a = ' num2str(a2) ' b = ' num2str(b2)]);

p = complex(zeros(2, 2));

r = roots([1 a1+1 a1+b1]);
p(1, :) = r.';		% transpor sem calcular o complexo conjugado

r = roots([1 a2+1 a2+b2]);
p(2, :) = r.';		% transpor sem calcular o complexo conjugado

figure;
plot(real(p(:,1)), imag(p(:,1)), real(p(:,2)), imag(p(:,2)));
