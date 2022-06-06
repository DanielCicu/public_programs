clear
clc
[B,Fs]=audioread('Brallan.mp3');
B=B(:,1);
plot(B)
A_pos_filtro=bandpass(B,[390 2300],Fs);
E_pos_filtro=bandpass(B,[499 501],Fs);
I_pos_filtro=bandpass(B,[1900 2400],Fs);
O_pos_filtro=bandpass(B,[499 501],Fs);
U_pos_filtro=bandpass(B,[319 321],Fs);