clear
clc

h = 6.626e-34;
f = 6e14;
k = 1.38e-23;
T = 1000;
eEstim_eEspont = 1/(exp(h*f/(k*T)) - 1);

%% Detectores ópticos

i = 23e-3;
p = 4;
rho = i/p;

% rho: responsividad
% i: corriente de salida del detector
% p: potencia óptica de entrada

% Respuesta espectral: curva de responsividad del detector en función de la
% longitud de onda

% Tiempo de subida (tr): demora de subir del 10% al 90%, a 3 dB la señal de
% salida cae a la mitad en relación a bajas frecuencias

tr = 2;
f3dB = 0.35/tr;

% Longitud de onda de corte: permite determinar si el detector permite
% trabajar con una longitud de onda, energía mínima que debe tener un fotón
% para ser detectado. Máxima longitud de onda detectable

Lambda_corte = 1.24/Eg;

% Eficiencia cuántica: no siempre hf>=Eg libera suficientes electrones para
% ser detectados, este parámetro define la relación de electrones emitidos
% con los fotones incidentes.
% n = electrones emitidos/fotones incidentes

n = re/rp;
rp = P/hf;
re = n*P/hf;

% P: potencia óptica
% hf: energía de 1 fotón

i1 = n*e*P/hf;
i2 = n*e*lambda*P/hc;
rho = n*e/hf;
rho = n*e*lambda/hc;

% e: carga del electrón