function J1= Jsolver(Vin,n,Rs,Rsh,J0,JL)
%set constant
T=300;
q=1.60217646e-19;
sigma=1e-16/10000;
c=299792458;
h=6.626068e-34/q;
kb=1.3806503e-23; %boltsmanns in J
Vth= kb*T/q;
%J0= min(0,J0);
%Jin =-Jin;
%JL=-JL;
J1 = -Vin/(Rs+Rsh)-lambertw(Rs*J0*Rsh*exp(Rsh*(Rs*JL+Rs*J0+Vin)/(n*Vth*(Rs+Rsh)))/(n*Vth*(Rs+Rsh)))*n*Vth/Rs+Rsh*(J0+JL)/(Rs+Rsh);
J1 = min(0.5,J1);

end