clear
clc

%% Lectura de audios y Frecuencia de muestreo

A=audioread('VocalC_A.mp3');
E=audioread('VocalC_E.mp3');
I=audioread('VocalC_I.mp3');
O=audioread('VocalC_O.mp3');
[U,Fs]=audioread('VocalC_U.mp3');

%% Información de los audios

info_A=audioinfo('VocalC_A.mp3');

info_E=audioinfo('VocalC_E.mp3');

info_I=audioinfo('VocalC_I.mp3');

info_O=audioinfo('VocalC_O.mp3');

info_U=audioinfo('VocalC_U.mp3');

%% Gráfica de las señales de audio en tiempo

subplot(5,1,1)
plot(A)
xlim([0 length(A)])
title('Vocal A')

subplot(5,1,2)
plot(E)
xlim([0 length(E)])
title('Vocal E')

subplot(5,1,3)
plot(I)
xlim([0 length(I)])
title('Vocal I')

subplot(5,1,4)
plot(O)
xlim([0 length(O)])
title('Vocal O')

subplot(5,1,5)
plot(U)
xlim([0 length(U)])
title('Vocal U')

%% Filtrado para sólo señales de voz

banda=[117 4000];

A=bandpass(A,banda,Fs);

E=bandpass(E,banda,Fs);

I=bandpass(I,banda,Fs);

O=bandpass(O,banda,Fs);

U=bandpass(U,banda,Fs);
 
%% Banco de frecuencias

%  Se busca que el ancho de banda sea lo menor posible, en este caso, de 3
%  Hz

Componentes_A=[628;761;891;967;1149;1280;1362;1476;1764;1927;2051;2186;
    2250;2336;2385;2456;2578;2704;2778;2819;2895;2953;3016;3094;3150;
    3223;3469;3534];
Inferiores_A=Componentes_A-1;
Superiores_A=Componentes_A+1;
tabla_A=table(Componentes_A,Inferiores_A,Superiores_A);

Componentes_E=[369;474;615;744;838;996;1113;1266;1371;1515;1645;1769;1881;
    2027;2139;2291;2502;2608;2654;2795;2918;3035;3164;3422;3545;3663;3774;
    3956];
Inferiores_E=Componentes_E-1;
Superiores_E=Componentes_E+1;
tabla_E=table(Componentes_E,Inferiores_E,Superiores_E);

Componentes_I=[123;252;1395;1535;1606;1659;1782;1869;1922;2004;2057;2122;
    2180;2309;2438;2585;2696;2772;2819;2895;2948;3083;3212;3335;3452;3593;
    3856;3974];
Inferiores_I=Componentes_I-1;
Superiores_I=Componentes_I+1;
tabla_I=table(Componentes_I,Inferiores_I,Superiores_I);

Componentes_O=[498;627;756;873;1008;1213;1313;1377;1430;1582;1647;1694;
    1758;1805;1928;1993;2034;2110;2163;2221;2290;2391;2432;2602;2649;2784;
    2925;3030;3182;3288;3452;3569;3639;3821;3939];
Inferiores_O=Componentes_O-1;
Superiores_O=Componentes_O+1;
tabla_O=table(Componentes_O,Inferiores_O,Superiores_O);

Componentes_U=[129;264;393;533;674;932;1213;1330;1442;1512;1559;1623;1659;
    1699;1769;1817;1840;1881;1928;1958;1998;2039;2069;2109;2145;2186;2227;
    2279;2327;2368;2415;2449;2491;2555;2637;2690;2760;2819;2866;2936;3007;
    3053;3094;3129;3229;3294;3346;3382;3434;3528;3569;3610;3663;3751;3838;
    3903;3979];
Inferiores_U=Componentes_U-1;
Superiores_U=Componentes_U+1;
tabla_U=table(Componentes_U,Inferiores_U,Superiores_U);

%% Banco de filtros y filtrado

% Filtrado con banco de frecuencias de la A

f_a=0;
f_e=0;
f_i=0;
f_o=0;
f_u=0;

for i=1:length(Inferiores_A)
    d_a=fdesign.bandpass('N,F3dB1,F3dB2',10,Inferiores_A(i),Superiores_A(i),Fs);
    Hda=design(d_a,'butter');
    f_a=filter(Hda,A)+f_a;
    f_e=filter(Hda,E)+f_e;
    f_i=filter(Hda,I)+f_i;
    f_o=filter(Hda,O)+f_o;
    f_u=filter(Hda,U)+f_u;
end

f_a=abs(fft(f_a)).^2;
f_e=abs(fft(f_e)).^2;
f_i=abs(fft(f_i)).^2;
f_o=abs(fft(f_o)).^2;
f_u=abs(fft(f_u)).^2;

xa_a=sum(f_a(1:(length(f_a)-1),1))/length(f_a);
xa_e=sum(f_e(1:(length(f_e)-1),1))/length(f_e);
xa_i=sum(f_i(1:(length(f_i)-1),1))/length(f_i);
xa_o=sum(f_o(1:(length(f_o)-1),1))/length(f_o);
xa_u=sum(f_u(1:(length(f_u)-1),1))/length(f_u);

if xa_a>xa_e && xa_a>xa_i && xa_a>xa_o && xa_a>xa_u
    disp("Es correspondiente a la A")
end

% Filtrado con banco de frecuencias de la E

f_a=0;
f_e=0;
f_i=0;
f_o=0;
f_u=0;

for i=1:length(Inferiores_E)
    d_a=fdesign.bandpass('N,F3dB1,F3dB2',10,Inferiores_E(i),Superiores_E(i),Fs);
    Hda=design(d_a,'butter');
    f_a=filter(Hda,A)+f_a;
    f_e=filter(Hda,E)+f_e;
    f_i=filter(Hda,I)+f_i;
    f_o=filter(Hda,O)+f_o;
    f_u=filter(Hda,U)+f_u;
end

f_a=abs(fft(f_a)).^2;
f_e=abs(fft(f_e)).^2;
f_i=abs(fft(f_i)).^2;
f_o=abs(fft(f_o)).^2;
f_u=abs(fft(f_u)).^2;

xe_a=sum(f_a(1:(length(f_a)-1),1))/length(f_a);
xe_e=sum(f_e(1:(length(f_e)-1),1))/length(f_e);
xe_i=sum(f_i(1:(length(f_i)-1),1))/length(f_i);
xe_o=sum(f_o(1:(length(f_o)-1),1))/length(f_o);
xe_u=sum(f_u(1:(length(f_u)-1),1))/length(f_u);

if xe_e>xe_a && xe_e>xe_i && xe_e>xe_o && xe_e>xe_u
    disp("Es correspondiente a la E")
end

% Filtrado con banco de frecuencias de la I

f_a=0;
f_e=0;
f_i=0;
f_o=0;
f_u=0;

for i=1:length(Inferiores_I)
    d_a=fdesign.bandpass('N,F3dB1,F3dB2',10,Inferiores_I(i),Superiores_I(i),Fs);
    Hda=design(d_a,'butter');
    f_a=filter(Hda,A)+f_a;
    f_e=filter(Hda,E)+f_e;
    f_i=filter(Hda,I)+f_i;
    f_o=filter(Hda,O)+f_o;
    f_u=filter(Hda,U)+f_u;
end

f_a=abs(fft(f_a)).^2;
f_e=abs(fft(f_e)).^2;
f_i=abs(fft(f_i)).^2;
f_o=abs(fft(f_o)).^2;
f_u=abs(fft(f_u)).^2;

xi_a=sum(f_a(1:(length(f_a)-1),1))/length(f_a);
xi_e=sum(f_e(1:(length(f_e)-1),1))/length(f_e);
xi_i=sum(f_i(1:(length(f_i)-1),1))/length(f_i);
xi_o=sum(f_o(1:(length(f_o)-1),1))/length(f_o);
xi_u=sum(f_u(1:(length(f_u)-1),1))/length(f_u);

if xi_i>xi_a && xi_i>xi_e && xi_i>xi_o && xi_i>xi_u
    disp("Es correspondiente a la I")
end

% Filtrado con banco de frecuencias de la O

f_a=0;
f_e=0;
f_i=0;
f_o=0;
f_u=0;

for i=1:length(Inferiores_O)
    d_a=fdesign.bandpass('N,F3dB1,F3dB2',10,Inferiores_O(i),Superiores_O(i),Fs);
    Hda=design(d_a,'butter');
    f_a=filter(Hda,A)+f_a;
    f_e=filter(Hda,E)+f_e;
    f_i=filter(Hda,I)+f_i;
    f_o=filter(Hda,O)+f_o;
    f_u=filter(Hda,U)+f_u;
end

f_a=abs(fft(f_a)).^2;
f_e=abs(fft(f_e)).^2;
f_i=abs(fft(f_i)).^2;
f_o=abs(fft(f_o)).^2;
f_u=abs(fft(f_u)).^2;

xo_a=sum(f_a(1:(length(f_a)-1),1))/length(f_a);
xo_e=sum(f_e(1:(length(f_e)-1),1))/length(f_e);
xo_i=sum(f_i(1:(length(f_i)-1),1))/length(f_i);
xo_o=sum(f_o(1:(length(f_o)-1),1))/length(f_o);
xo_u=sum(f_u(1:(length(f_u)-1),1))/length(f_u);

if xo_o>xo_a && xo_o>xo_e && xo_o>xo_i && xo_o>xo_u
    disp("Es correspondiente a la O")
end

% Filtrado con banco de frecuencias de la U

f_a=0;
f_e=0;
f_i=0;
f_o=0;
f_u=0;

for i=1:length(Inferiores_U)
    d_a=fdesign.bandpass('N,F3dB1,F3dB2',10,Inferiores_U(i),Superiores_U(i),Fs);
    Hda=design(d_a,'butter');
    f_a=filter(Hda,A)+f_a;
    f_e=filter(Hda,E)+f_e;
    f_i=filter(Hda,I)+f_i;
    f_o=filter(Hda,O)+f_o;
    f_u=filter(Hda,U)+f_u;
end

f_a=abs(fft(f_a)).^2;
f_e=abs(fft(f_e)).^2;
f_i=abs(fft(f_i)).^2;
f_o=abs(fft(f_o)).^2;
f_u=abs(fft(f_u)).^2;

xu_a=sum(f_a(1:(length(f_a)-1),1))/length(f_a);
xu_e=sum(f_e(1:(length(f_e)-1),1))/length(f_e);
xu_i=sum(f_i(1:(length(f_i)-1),1))/length(f_i);
xu_o=sum(f_o(1:(length(f_o)-1),1))/length(f_o);
xu_u=sum(f_u(1:(length(f_u)-1),1))/length(f_u);

if xu_u>xu_a && xu_u>xu_e && xu_u>xu_i && xu_u>xu_o
    disp("Es correspondiente a la U")
end