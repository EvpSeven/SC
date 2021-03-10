%%% Folha de Exercicios %%%
%%% Ex. 30
clear;
close all;
clc;

%a)
k = 9;

s = tf('s');
Gs = 27 / (s+3)^3;
Ts = feedback(k*Gs, 1);

figure;
step(Ts);

%c)

k = (0 : 0.01 : 10)';
p = complex(zeros(length(k), 3));
for n = 1 : length(k)
	r = roots([1 9 27 27*(k(n)+1)]);
	p(n, :) = r.';		% transpor sem calcular o complexo conjugado
end

figure;
plot(real(p(:,1)), imag(p(:,1)), real(p(:,2)), imag(p(:,2)), real(p(:,3)), imag(p(:,3)));