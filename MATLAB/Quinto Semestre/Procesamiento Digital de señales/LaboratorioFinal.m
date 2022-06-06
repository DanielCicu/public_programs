filename = 'audio.wav';
[y,Fs]=audioread(filename);
audioinfo(filename)

%%%% 2.(a)
f=Fs/2;

%%%% 2.(b)
pspectrum(y,Fs)

%%%% 2.(c)
fminruido=2021;

%%%% 2.(d)
fp=fminruido*2/Fs;
fr=2050*2/Fs;
[n,Wn,beta,ftype]=kaiserord([fp fr],[1 0],[0.001 0.001]);
w=kaiser(n,beta);
b=fir1(n-1,Wn,w);
yf=filter(b,1,y);
% Con kaiserord se generan los parámetros para la ventana de kaiser,éste
% arroja el n (orden), las restricciones de frecuencia (Wn), el beta y el
% tipo de filtro. Con kaiser se crea la ventana y con fir1 se diseña el
% filtro,con filter se aplica el filtro obteniendo así la señal filtrada

%%%% 2.(e)
pspectrum(yf,Fs)

%%%% 2.(f)
filename = 'audio1.wav';
audiowrite(filename,yf,Fs);
[y,Fs]=audioread(filename);
sound(y,Fs)