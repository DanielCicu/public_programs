clear
clc
% % % % CASO 1
% syms A A1 B B1 ax ay az
% A1=[4, 2, -1];
% B1=[6, 3, -2];
% resul=dot(A1,B1)
% A=[4*ax, 2*ay, -1*az];
% B=[6*ax, 3*ay, -2*az];
% resul2=cross(A,B)
% resul3=rad2deg(asin(sqrt(5)/(sqrt(21)*sqrt(49))))

% % % % CASO 2
syms x y z ay az A Ap ax
x=1;
y=2;
z=3;
A=y*ax+(x+z)*ay+x*az;
Ap=sqrt(21);
mat2