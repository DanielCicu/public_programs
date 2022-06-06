clear
clc
% Si se da una cantidad de r eventos se utiliza Erlang
syms r x lambda fun otra Poisson
lambda=1/10;
r=1;
fun=lambda*exp(-lambda*x);
Erlang=(lambda^r)*(x^(r-1))*exp(-lambda*x)/factorial(r-1);
exponencial=vpa(int(fun, 5,inf))
Poisson=exp(-lambda*x);
otra=solve(int(fun, 0,x)==0.1,x);
otra2=solve(Poisson==0.9,x);
media=1/lambda;
varianza=1/(lambda^2);
distribucion_estandar=sqrt(varianza);