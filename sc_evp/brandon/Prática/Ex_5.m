%%% Folha de Exercicios %%%
%%% Ex.5 e) & f)
clear;
close all;
clc;

R = 1 * 10^3; 
C = 1 * 10^-6; 

s = tf('s');
Gs = (s - 1) / (s + 1/(R*C));

t = 0:0.0001:0.05;
vi = zeros(size(t));
vi(t <= 0.005) = 5;		% 5 -> t <= 5 ms ; 0 -> t > 5ms & t < 0


figure;
subplot(2,1,1);
step(5*Gs);			% step amplitude 5
title('response to step amp. 5');

subplot(2,1,2);
lsim (Gs, vi, t);
title('response to vi');