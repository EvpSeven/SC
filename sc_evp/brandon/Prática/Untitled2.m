%%teste sc14/01/2020

%T(s)=G/(1+GHk) (função transfêrencia)
%T.V.F= lim(s->0) s*T(s)*R(s) = VF
%T(s)=A/(s^2 + 2*qsi*Wns + Wn^2)

%qsi(Wref amortecido)
%qsi>1 - 2polos reais negativos (sobre-amortecido)
%qsi=1 - 2polos reais sobrepostos (criticamente amortecido)
%0<qsi<1 - 2 polos complexos (imag.) conjugados c/ parte real negativas
%(sub-amortecido
%qsi <0 - 2 polos complexos conjugados c/ parte real positiva

%Sobreelevação(PO)
%Po=100*e^((-qsi*pi)/sqrt(1-qsi^2))
%qsi=sqrt((ln(Po/100)^2)/(pi^2 + (ln(Po/100)^2)))
%Po=(Mp - Vf)/Vf *100 (Mp=valor de pico)

%erro em regime estacionário ess
%ess=lim(s->0) s*(R(s)/(1+G(s)H(s)C(s))
%E(s)= 1/(1+G(s)H(s))*R(s) // G(s)H(s) Função transferencia em malha aberta

%tempo de subida
%tr
%inst de pico tp

%Método Lugar de Raízes
%i)Regra de Evans m=(grau do numerador) n=(grau do den.)

%s=jWcr
%s^2=-Wcr^2
%s^3=-jWWcr^3
clear all;
s = tf('s');

fv1=1
fv2=1
fv3=1
fv4=1

M1=1
M2=1
M3=1

K1=1
K2=1

G1=1/(M2*s^2+fv2*s+K2)
G2=K2/(M1*s^2+fv1*s+K1+K2)
G3=(fv3*s)/(M3*s^2+(fv3+fv4)*s)
G4=(fv4*s)/(M3*s^2+fv2*s+K2)
H1=(K2)/(M2*s^2+fv3*s+K2)



2*sqrt(5)

%%

s = tf('s');
J=1;
K=5;
D=0.2;

Gs=(1/J)/(s^2+(D/J)*s+(K/J))
figure;
step(Gs)

% Po=0.2
Wn=sqrt(K/J)
qsi=(D/(2*J*Wn))
%qsi = sqrt(log(Po/100)^2 / (pi^2 + log(Po/100)^2))
Po= 100 * exp( (-pi*qsi)/(sqrt(1-qsi^2)) )
% tp=2
% Wn = 4/(2*qsi)
% J=5/(Wn^2)
% D=2*qsi*Wn*J
