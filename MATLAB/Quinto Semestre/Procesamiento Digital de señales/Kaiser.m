clear, clc
n=-500:500;
tm=0.1*pi;
x=cos(tm*n);
frecuencia1=tm/(2*pi);
periodo1=1/frecuencia1;
tm2=0.01*pi;
r=2*cos(tm2*n);
frecuencia2=tm2/(2*pi);
periodo2=1/frecuencia1;
s=x+r;
[M,wc,B,type]=kaiserord([0.05 0.08],[1 0],[0.001 0.001])
wk=kaiser(M,B);
h=fir1(M-1,wc,wk);

% % % % MEDIANTE CONVOLUCIÓN
y=conv(s,h,'same');
subplot(3,1,1)
stem(n,r)
grid on
subplot(3,1,2)
stem(n,s)
grid on
subplot(3,1,3)
stem(n,y)
grid on

% % % % CON FILTER
% y1=filter(h,1,s);
% subplot(3,1,1)
% stem(n,r)
% grid on
% subplot(3,1,2)
% stem(n,s)
% grid on
% subplot(3,1,3)
% stem(n,y1)
% grid on
% 
% freqz(h,1)