%% Ex37
clear
% b_ii)
s = tf('s');
Gs = 1/(s*(s+7)*(s+11));
sisotool('rlocus',Gs)

%% Ex38
clear
% a) i)
polos = poly([0 -2 -4 -6]);

x = roots([4 36 88 48]);

% a) ii)
s = tf('s');  
Gs = 6*(s+8)/(s*(s+2)*(s+4)*(s+6));
sisotool('rlocus',Gs)

% b) ii)
k = roots([1/4 30 -160]);

% c)
PO = 30;
csi = sqrt((log(PO/100)^2)/(log(PO/100)^2+pi^2));