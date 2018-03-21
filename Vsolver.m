function V1= JVsolver(Jin,n,Rs,Rsh,J0,JL)
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
Jin = Jin;
Rs = Rs;
Rsh = Rsh;
J0 = J0;
JL = JL;
V1 = -Jin*(Rs+Rsh)+JL*Rsh-Vth*n*lambertw(J0*Rsh*exp(Rsh*(-Jin+JL+J0)/n/Vth)/n/Vth)+J0*Rsh;
%V1= min(0,abs(imag(V1)));
V1 = min(10,V1);
end