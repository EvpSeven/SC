%%% Folha de Exercicios %%%
%%% Ex.6 b)
clear;
close all;
clc;

t = 0 : 0.01 : 5;

u = (t < 2);

s = tf('s');
Gs = 1 / (s+2)^2;
lsim(Gs, u, t);