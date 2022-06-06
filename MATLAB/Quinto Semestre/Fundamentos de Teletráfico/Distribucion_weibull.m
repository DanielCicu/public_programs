clear
clc

syms fun B d result x
B=2;
d=10000;
fun=((B/d)*((x/d)^(B-1))*exp(-((x/d))^B));
result=vpa(int(fun,8000,inf))
media=d*gamma(1+1/B)