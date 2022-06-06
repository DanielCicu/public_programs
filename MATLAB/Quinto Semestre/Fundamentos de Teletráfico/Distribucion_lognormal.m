clear
clc

syms fun result x w t media desv_est
media=10;
sigma=1.5;
d=10000;
V=sqrt(exp((2*media+(sigma^2)))*(exp(sigma^2)-1))
lnd=log(d)
z=(lnd-media)/sigma
E=exp(media+((sigma^2)/2))
