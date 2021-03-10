%%% Folha de Exercicios %%%
%%% Ex. 42
clear;
close all;
clc;

s = tf('s');
Gs = 12 / ((s+2)^2*(s+3));
sisotool('rlocus', Gs);

