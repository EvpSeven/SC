%%% Folha de Exercicios %%%
%%% Ex.3 c)
clear;
close all;
clc;

s = tf('s');
Gs = (s+2) / (s+1)^2;
step(Gs);