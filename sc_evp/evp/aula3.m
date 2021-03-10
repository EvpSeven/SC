clear;
clf

K=1;
M=1;
DVect=[1 2 4];

t=(0:0.01:20)';
a=ones(length(t),1);

ain=[t a];

D=DVect(2);
SimOut=sim('Aula3_Ex2Simulink.slx', 'StopTime', '20', 'MaxStep', '10e-6');

plot(SimOut.accel.Time, SimOut.accel.Data);
