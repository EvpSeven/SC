%%% Folha de Exercicios %%%
%%% Ex.8
clear;
close all;
clc;

R = 10;
L = 1e-3;
C = 10e-6;

s = tf('s');
Gs = (s/(R*C)) / (s^2 + s/(R*C) + 1/(L*C));

%%% c)
figure;
step(2*Gs);		% step de 2V

%%% d)
h = 1e-6;
t = 0 : h : 3e-3;

vi = 2*ones(size(t));
vi(t < 0.5e-3) = 1;
vi(t > 1e-3) = 0;

figure;
lsim(Gs, vi, t);

%%% e)
f = [0.1 1 1.6 3 16]*1e3;		% frequencias de teste
fs = 10*max(f);
T = 2/min(f);		% duração de cada teste
t = (0 : (1/fs) : T)';

figure;
hold on;

for n = 1:length(f)
	vi = sin(2*pi*f(n)*t);
	[vo, to] = lsim(Gs, vi, t);
	plot(to, vo);
	
	str{n} = ['f = ' num2str(f(n)*1e-3) ' KHz'];  
end

legend(str);

%%% f)
figure;
h = bodeplot(Gs);
setoptions(h, 'FreqUnits', 'Hz', 'PhaseVisible', 'off');
grid on;