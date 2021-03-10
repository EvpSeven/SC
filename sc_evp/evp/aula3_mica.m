k = 1;
M = 1;
Dvector = [1 2 4];

t = [0:0.01:20]';
a = ones(length(t),1);
ain = [t a];

D = Dvector(3);
SimOut = sim('Aula3_EX2Simulink.slx','StopTime','20','MaxStep','10e-3','SrcWorkspace','Current');
plot(SimOut.accel.Time,SimOut.accel.Data)

for n = 1:1:size(Dvector)
    D=Dvector(n);
    SimOut=sim('Aula3_EX2Simulink.slx','StopTime','20','MaxStep','10e-3','SrcWorkspace','Current');
    hold on;
    plot(SimOut.accel.Time,SimOut.accel.Data)
end

s = tf('s');
for n = 1:length(Dvector)
    Gs=1/(s^2+s*Dvector(n)/M+K/M);
    [y t] = step(Gs,20);
    plot(t,y)
end

