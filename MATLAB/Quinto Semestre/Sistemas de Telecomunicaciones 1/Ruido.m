% % % % RUIDO
clear
clc
% t=17;
% BW=200e3;
% Si=1e-6;
% Ap=1e2;
% Np=1e-16;
% Ni=(1.38e-23)*(t+273)*BW
% SiNi=Si/Ni

% % Formula de Friss
F1=2;
F2=10^(3/10);
F3=2;
G1=10^(3/10);
G2=10^(4/10);
G3=4;
% FT=F1 + (F2-1)/G1 + (F3-1)/G*G2 + (Fn-1)/G1*G2*(Gn-1)
% SoNo=(Si*Ap)/((Ni*Ap)+Np)
% F=(SiNi)/SoNo
FT=F1+((F2-1)/G1)+((F3-1)/(G1*G2))
Indice=10*log10(FT)