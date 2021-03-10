%%% Folha de Exercicios %%%
%%% Ex. 10
clear;
close all;
clc;

A = 1;
K = 1;
M = 1;
D_v = [1 2 4];

figure;
hold on;
for i = 1:length(D_v)
	D = D_v(i);
	SimOut = sim('Ex10', 'StopTime', '20', 'MaxStep', '1e-3', 'SrcWorkspace', 'current');
	
	plot(SimOut.y.Time, SimOut.y.Data);
end