%% EX1 %Filtro passa baixo

s=tf('s');
Gs= (1/s - (1/(a+s)));
step(Gs);
xlabel('Tempo (seg)');
ylabel('Saída V_o(t) (V)');
figure (2);

[y t] = step(Gs);
plot(t,y,'-r','LineWidth',1), title('Response of an RLC circuit to an unitary step','Interpreter','Latex')
bode(Gs)

grid on;

%% EX2

s=tf('s');
a=0.1;
b=0.2;
Gs= ((a*b)/((s+1)*(s+b)));
step(Gs);
xlabel('Tempo (seg)');
ylabel('Saída V_o(t) (V)');
grid on;

%% EX5 & FILTRO PASSA ALTO

R=1e3;
C=1e-6;
s=tf('s');
Gs= (s/(s+1/(R*C)));
figure(3)
[y,t] = step(5*Gs);
plot(t,y,'-r','LineWidth',1), title('Response of an RLC circuit to an unitary step','Interpreter','Latex')
bode(Gs)

grid on;

%% Aula2EX6

R=10;
C=10e-6;
L=1e-3
s=tf('s');
%SimOut=sim('s.slx','StopTime','10e-3','MaxStep','1e-6','SrcWorkspace','current');

%% ex1 filtroRLC







