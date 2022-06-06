clear
clc
syms v t x A Vmax k Yxt Vy ay w
Yxt=A*sin(k*x+w*t)
Vy=diff(Yxt,t)
ay=diff(Vy,t)
v=12.4;
t=1;
x=0.5;
A=0.09;
Vmax=7.5;
w=Vmax/A;
k=w/v;
f=w/(2*pi);