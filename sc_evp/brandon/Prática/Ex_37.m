%%% Folha de Exercicios %%%
%%% Ex. 37
clear;
close all;
clc;

s = tf('s');
Gs = 1 / (s*(s+7)*(s+11));
sisotool('rlocus', Gs);