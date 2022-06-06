clear
clc

%% Pérdidas por conexión
% 
% n1 = 1.5;
% n = 1;
% r = ((n1-n)/(n1+n))^2;
% lossfres = round(-10 * log10(1 - r), 3);
% disp(strcat("Las pérdidas totales son ",num2str(lossfres*2)," dB"))

%% Pérdidas por desalineación

% n1 = 1;
% n = 1.6;
% a = 25e-6;
% y = 8e-6;
% 
% con gap
% nlat = ((16*(n1/n)^2)/((1+(n1/n))^4))*(1/pi)*(2*acos(y/(2*a))-(y/a)*sqrt(1-(y/(2*a))^2));
% disp(strcat("Eficiencia con gap del ",num2str(round(nlat*100,2)),"%"))
% Losslat = -10 * log10(nlat);
% disp(strcat("Las pérdidas totales con gap son ",num2str(round(Losslat,2))," dB"))
    
% sin gap
% nlat = (1/pi)*(2*acos(y/(2*a))-(y/a)*sqrt(1-(y/a)^2));
% disp(strcat("Eficiencia sin gap del ",num2str(round(nlat*100,2)),"%"))
% Losslat = -10 * log10(nlat);
% disp(strcat("Las pérdidas totales sin gap son ", num2str(round(Losslat, 2)), " dB"))

%% Angular

% n1 = 1.48;
% n = 1;
% NA = 0.2;
% theta = deg2rad(0:5);
% delta = NA/n1;
% nlat = ((16 * (n1/n)^2)/((1 + (n1/n))^4)) * (1 - (n * theta/(pi * n1 * 2 * delta)));
% Losslat = -10 * log10(nlat);
% disp(strcat("Las pérdidas longitudinales son ", num2str(round(Losslat, 2)), " dB"))

%% Longitudinal

% s = 1;
% NA = 1;
% no = 1;
% a = 1;
% Loss_long = -10 * log10(1 - (s * NA/(no * 4 * a)))

%%

y = 1e-6;
n1 = 1.46;
V = 2.4;
a = 4e-6;
NA = 0.1;
theta = deg2rad(1);

w=a * ((0.65 + (1.62 * (V^(-3/2)) / 1) + 2.88 * (V^(-6)))/sqrt(2));
Tl = 2.17 * (y / w)^2;
Ta = 2.17 * ((theta * w * V * n1) / (a * NA))^2;
Tt = Ta + Tl;