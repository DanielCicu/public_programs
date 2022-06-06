clc;
clear all;
s = serial('COM4');
set(s,'BaudRate',9600);
set(s,'DataBits',8);
set(s,'Parity','none');
set(s,'StopBits',1);
set(s,'InputBufferSize',10);
fopen(s);
while(1)
    out = fread(s);
    plot(out)
end
fclose(s);
delete(s);