clear
clc
tm=pi/3;
frecuencia=tm/(2*pi);
periodo=1/frecuencia;
n=0:5;
x=cos(tm*n);
for k=0:(length(n)-1)
    xk(k+1)=round(abs((1/(2*periodo))*sum(exp((1-k)*1i*tm.*n)-exp((1+k)*1i*tm.*n))),4);
end
stem(n,x)

% n=0:pi;
% tm=2;
% x=cos(tm*n);
% frecuencia1=tm/(2*pi);
% periodo1=1/frecuencia1;
% stem(n,x)