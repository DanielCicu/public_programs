clear; clc;
% % % PAM (Modulación pulsada por pulsos)
% X1(t) (con una frecuencia fm) señal analógica con una señal xs(t) (con
% una frecuencia fs)
% Señal muestreada

% % % PCM (Modulación por pulsos codificados)
% '1' equivalente a 12V, '0' equivalente a -12V

% % % PWM (Modulación por ancho de pulso)
% Cambios en el Tau, es decir, el período

% % % Radio Digial
% Radio TDT, Radio de comunicación móviles

% Aliasing: no se cumple Nyquist
% fs>2fm

format shortEng
syms Xmt ts
fm=62.5;
Xmt=4*cos(2*pi*400*t);
fs=1000;
N=round(fs/fm);
ts=1/fs;
tm=1/fm;
n=0:N-1;
Xmt=1.65+1.65.*cos(2*pi*fm*ts.*n);
stem(n,Xmt)

% 8 bits
AtoD_8bits=ceil((Xmt.*(255))./5);

% 10 bits
AtoD_10bits=ceil((Xmt.*(1023))./5);

% 12 bits
AtoD_12bits=ceil((Xmt.*(4095))./5);

% Creación de la tabla
n=transpose(n);
Xmt=transpose(Xmt);
AtoD_8bits=transpose(AtoD_8bits);
AtoD_10bits=transpose(AtoD_10bits);
AtoD_12bits=transpose(AtoD_12bits);
tabla=table(n, Xmt, AtoD_8bits, AtoD_10bits, AtoD_12bits);
