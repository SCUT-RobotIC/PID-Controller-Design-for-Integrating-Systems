% normalization PID a quite strange things


% 针对于积分系统设计

Kp = 1;
d = 5;
%%%
beta = 1;

epsilon = 0.707; 


if(epsilon == 0.707)

    kc_hat = 1/(0.7184*beta + 0.3661);
    tauI_hat = 1.3970*beta + 1.2271;
    tauD_hat = 1/(1.4275*beta + 1.6450);

 
elseif(epsilon == 1)

    kc_hat = 1/(0.5138*beta + 0.5909);
    tauI_hat = 1.9886*beta + 1.2118;
    tauD_hat = 1/(1.0156*beta + 1.7550);


end

kc = kc_hat/(d*Kp);
tauI = tauI_hat *d ;
tauD = tauD_hat * d;

tauf = 0.01;