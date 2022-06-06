% % % % Primero
clear
clc
syms y1 y2 x t eqn
y1=5/(((3*x-4*t)^2)+2);
y2=-5/(((3*x+4*t-6)^2)+2);

% % Parte a
% por lo del wt
% y1 pa la derecha (negativo)
% y2 pa la izquierda (positivo)

% % Parte b
eqn= y1+y2==0;
x_canc_ond=solve(eqn,x)

% % Parte c
t_canc_ondas=solve(eqn,t)

%%

% % % % Segundo
clear
clc
syms y x t
y=0.12*sin(pi*x/8+4*pi*t);
V=diff(y,t);
a=diff(V,t);

% % Parte a en t=0 y x=1.6
t=0;
x=1.6;
V
a

% % Parte b 
k=pi/8;
lambda=2*pi/k;
w=4*pi;
f=w/(2*pi);
T=1/f;
v=lambda*f;

%%

% % % % Tercero
clear
clc
syms v t x A Vmax k Yxt Vy ay w
Yxt=A*sin(k*x+w*t)
Vy=diff(Yxt,t)
ay=diff(Vy,t)
v=12.4;
t=1;
x=0.5;
A=.045;
Vmax=9.4;
w=Vmax/A;
k=w/v;
f=w/(2*pi);

%%

% % % % Cuarto
syms y x1 A t k dif_fase x2
y=0.5*sin(4*pi*t-2*x1);
A=0.5;
k=-2;
dif_fase=4*pi*t-2*20;