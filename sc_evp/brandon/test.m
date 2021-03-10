%% a)
t = [0 : 0.01 : 3]';

% v(0 > t < 1) = 0;
% v( 1 < t > 2) = 1;
% v(t>2)=0
% vi = [t v];

SimOut = sim('test', 'StopTime', '3', 'MaxStep', '1', 'SrcWorkspace', 'current');

figure;
plot(SimOut.vo.Time, SimOut.vo.Data);

%%
s = tf('s');

G1=K;
G2=1/(s+2);
G3=2/(s+4);
G4=4/s;
H1=1;
H2=10/(s+10);
H3=2;

Gs=(G2*G3*G4*G4*G1)/(1+(G3*H3*H2)+(H1*G2*G3*G4*G4*G1))

k=20;
step(Gs,7);
hold on;
k=2;
step(Gs,7);
hold on;



