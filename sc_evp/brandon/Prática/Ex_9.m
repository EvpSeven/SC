%%% Folha de Exercicios %%%
%%% Ex. 9
clear;
close all;
clc;

R = 10;
C = 10e-6;
L = 1e-3;


%% a)
t = [0 : 0.01 : 10]'*1e-3;
v = 2*ones(size(t));
vi = [t v];

SimOut = sim('Ex9', 'StopTime', '10e-3', 'MaxStep', '1e-6', 'SrcWorkspace', 'current');

figure;
plot(SimOut.vo.Time*1e-3, SimOut.vo.Data);

%% b)
f = 10.^(1 : 0.01 : 5);		% frequencias de teste

vo = zeros(size(f));

for n = 1:length(f)
	fs = 100*f(n);		% frequencia de amostragem 
    T = 100/f(n);		% duraçao de cada teste
    t = [0:(1/fs):(T-1/fs)]';
    
	vi = [t sin(2*pi*f(n)*t)];
    
	SimOut = sim('Ex9','StopTime','10e-3','Maxstep','min([0.1e-2 1/fs])','SrcWorkspace','current');
    
	vo(n) = max(abs(SimOut.vo.Data(round(8/10*end) : end ))); % ESTA MAL!!
end

figure;
semilogx(f, 20*log10(vo));
xlabel('frequência(Hz)');
ylabel('| G(j\omega)| (dB)');
grid on;