% example 8.4 基于pade近似的版本


syms s ;

% G = (-s+0.4)/(s*(s+0.4));



b1 =  -1;
b0 =  0.4 ;
a1 = 0.4;
a0 = 0;

% wn = 1/delay = 0.2
% Lamda = 0.2
Lamda  = 5 * 0.2;
Ac1 = [1 2*0.707*0.2 0.2*0.2]; % 对应方程 s^2 2*epsilon*wn wn^2
Ac2 = [1 2*Lamda  Lamda*Lamda ];       % 对应方程 s^2 2*lambda lambda^2
Ac1 = conv(Ac1,Ac2);

[kc,tauI,tauD,tauf] = PIDplace(a1, a0,b1,b0,Ac1);

