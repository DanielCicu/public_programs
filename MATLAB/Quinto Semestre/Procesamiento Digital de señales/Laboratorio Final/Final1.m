clear
clc

% Lectura del audio

[audio,Fs]=audioread('audio.wav');

% A partir de Nyquist determinamos cuál es la frecuencia más alta que puede
% contener ese archivo según la frecuencia de muestreo

fmax=Fs/2;
disp(['Por Nyquist la frecuencia máxima debe ser al menos de ',num2str(fmax),' Hz'])

% Espectro en frecuencia e identificación de la frecuencia en la que se dan
% las principales componentes

[p,s]=pspectrum(audio,Fs);
picos_amplitud=findpeaks(p);
for i=1:length(picos_amplitud)
    picos_frecuencia(i)=find(picos_amplitud(i)==p);
end
picos_frecuencia=transpose(picos_frecuencia);

% Frecuencia mínima en Hertz de la señal de ruido

freq_min_ruido=picos_frecuencia(78);
disp(['La frecuencia mínima en Hertz de la señal de ruido es ',num2str(freq_min_ruido),' Hz'])

% Diseño de filtro FIR para eliminar la señal de ruido

% Frecuencias de corte y rechazo, tomándolas a partir de la frecuencia
% mínima de ruido para la de corte, y la frecuencia de la siguiente
% componente para la de rechazo

f_ruido_paso=(picos_frecuencia(78)/Fs)*2;
f_ruido_rechazo=(picos_frecuencia(79)/Fs)*2;

% Se utiliza kaiserord para obtener los parámetros de la ventana, con
% kaiser se genera la ventana y se utiliza fir1 para diseñar la ventana

[M,wc,B,type]=kaiserord([f_ruido_paso f_ruido_rechazo],[1 0],[0.00001 0.00001]);
wk=kaiser(M,B);
h=fir1(M-1,wc,wk);
y=filter(h,1,audio);

% Gráfico del módulo del espectro de la señal filtrada

pspectrum(y,Fs)

% Ya teniendo la señal filtrada sin ruido, se genera el archivo
% "audio_filtrado.wav" y se reproduce para comprobar la correcta
% implementación del filtro

filename = 'audio_filtrado.wav';
audiowrite(filename,y,Fs);
n=audioread(filename);
sound(n,Fs)