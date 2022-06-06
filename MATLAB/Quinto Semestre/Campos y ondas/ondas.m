clear
clc
% % % % CASO 1
% M=8;
% g=9.81;
% m=0.15;
% L=4;
% miu=m/L;
% T=M*g;
% v=sqrt(T/miu);
% t=L/v;

% % % % CASO 2
% v=.12;
% lambda=.06;
% A=0.3;
% x=0.04;
% t=2;
% f=v/lambda;
% w=2*pi*f;
% k=w/v;
% Yxt=A*sin(k*x-w*t);
% Vy=-A*w*cos(k*x-w*t);
% ay=-A*(w^2)*sin(k*x-w*t);

% % % % CASO 3
% Yxt=0.25*sin(0.3*x-40*t);
% A=0.25;
% w=40;
% k=0.3;
% lambda=2*pi/k;
% f=w/(2*pi);
% v=lambda*f;

% % % % CASO 4
% Yxt=0.12*sin(x/4+8*t);
% A=0.12;
% w=8*pi;
% k=pi/4;
% x=2;
% t=3;
% lambda=2*pi/k;
% f=w/(2*pi);
% % v=lambda*f;
% Vy=A*w*cos(k*x+w*t);
% ay=-A*(w^2)*sin(k*x+w*t);

% % % % CASO 5
% T1=40;
% T2=80;
% v1=25;
% miu=T1/(v1^2);
% v2a=sqrt(T2/miu);
% v2b=v1/sqrt(T1/T2);

% % % % CASO 6
miu=8;
