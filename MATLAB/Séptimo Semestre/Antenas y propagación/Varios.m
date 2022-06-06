clear
clc
%% Longitud de onda

C = physconst('LightSpeed');
f = 2.45e9;
Lambda = C/f;

%% dBmW a mW

ref = 1e-3;
dBmW = 26;
mW = 10^(dBmW/10)*ref;

%% mW a dBmW

ref = 1e-3;
mW = 0.400;
dBmW = 10 * log10(mW/ref);

%% Pérdidas proporcionales

R = 50e3;
perdidas = 1 / (R^2);