clc
clear all
n=-20:30;
orig=find(n==0);
h=(0.25.^n).*escalon(n);
x=escalon(n-1)-escalon(n-7);
desp_iz=circshift(x,-1);
convolucion(1,1)=sum(h.*desp_iz);
desp_iz=circshift(desp_iz,-1);
convolucion(1,2)=sum(h.*desp_iz);
