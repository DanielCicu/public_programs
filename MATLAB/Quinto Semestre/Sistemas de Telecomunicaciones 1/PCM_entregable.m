%%
clear
clc
f=100;
w=2*pi*f;
t=0:1/(360*f):1/f;
subplot(2,4,1)
des=247.5141;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('000 8 PSK')
subplot(2,4,2)
des=202.4859;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('001 8 PSK')
subplot(2,4,3)
des=292.4859;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('010 8 PSK')
subplot(2,4,4)
des=337.5141;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('011 8 PSK')
subplot(2,4,5)
des=112.4859;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('100 8 PSK')
subplot(2,4,6)
des=157.5141;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('101 8 PSK')
subplot(2,4,7)
des=67.5141;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('110 8 PSK')
subplot(2,4,8)
des=22.4859;
fun=sqrt(2)*sin(w*t+deg2rad(des));
plot(t,fun)
title('111 8 PSK')
%%
clear
clc
f=100;
w=2*pi*f;
t=0:1/(360*f):2/f;
M1=0.7651;
M2=1.8484;
subplot(2,4,1)
des=225;
fun=M1*sin(w*t+deg2rad(des));
plot(t,fun)
title('000 8 QAM')
ylim([-2 2])
subplot(2,4,2)
des=225;
fun=M2*sin(w*t+deg2rad(des));
plot(t,fun)
title('001 8 QAM')
ylim([-2 2])
subplot(2,4,3)
des=315;
fun=M1*sin(w*t+deg2rad(des));
plot(t,fun)
title('010 8 QAM')
ylim([-2 2])
subplot(2,4,4)
des=315;
fun=M2*sin(w*t+deg2rad(des));
plot(t,fun)
title('011 8 QAM')
ylim([-2 2])
subplot(2,4,5)
des=135;
fun=M1*sin(w*t+deg2rad(des));
plot(t,fun)
title('100 8 QAM')
ylim([-2 2])
subplot(2,4,6)
des=135;
fun=M2*sin(w*t+deg2rad(des));
plot(t,fun)
title('101 8 QAM')
ylim([-2 2])
subplot(2,4,7)
des=45;
fun=M1*sin(w*t+deg2rad(des));
plot(t,fun)
title('110 8 QAM')
ylim([-2 2])
subplot(2,4,8)
des=45;
fun=M2*sin(w*t+deg2rad(des));
plot(t,fun)
title('111 8 QAM')
ylim([-2 2])