clear
clc

% Justicación de las especificaciones de diseño%
% Como la componente frecuencial más alta de la señal de información es de
% 20Hz se establecela frecuencia de paso en 30Hz, esto con el fin de que la 
% atenuación no afecte la información. De igual forma, se define la 
% frecuencia de rechazo en 190Hz para que la atenuación de 60dB se de antes
% de las frecuencias en las cuales están las principales componentes del 
% ruido.

fp=30/1000;
%%fp es la frecuencia de paso en tiempo discreto

fr=190/1000;
%%fp es la frecuencia de rechazo en tiempo discreto

fs=1*10^3;
ts=1/fs;
%%Debido a que las funciones de Matlab trabajan con frecuencias
%%normalizadas, multiplicamos por 2 las frecuencias de paso y de rechazo.

wp=fp*2;
ws=fr*2;
delta1=2;
delta2=60;

[n,wc]=buttord(wp,ws,delta1,delta2);
disp(['El orden del filtro es ',num2str(n)])
disp(['La frecuencia de corte del filtro es ',num2str(wc),' radianes/muestra'])
[num,dem]=butter(n,wc,'Low');
freqz(num,dem)
tf(num,dem,ts)




