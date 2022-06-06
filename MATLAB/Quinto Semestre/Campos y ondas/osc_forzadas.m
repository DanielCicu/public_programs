% % % % %Caso 1
% k=600;
% m=1.5;
% Fo=0.6;
% wf=19;
% dEE=0.045;
% EdE=1/dEE;
% Q=2*pi*EdE;
% wo=sqrt(k/m);
% dw=wo/Q;
% A=((Fo/k)*(wo/wf))/(sqrt((((wo/wf)-(wf/wo))^2)+(1/(Q^2))));

% % % % %Caso 2
% m=3;
% k=600;
% b=2.1;
% Fo=10;
% wf=10;
% wo=sqrt(k/m);
% B=b/(2*m);
% Q=wo/(2*B);
% A=((Fo/k)*(wo/wf))/(sqrt((((wo/wf)-(wf/wo))^2)+(1/(Q^2))));
% Amax=(Fo/k)*Q;
% dw=wo/Q;

% % % % %Caso 3
% dEE=0.065;
% EdE=1/dEE;
% Q=2*pi*EdE;
% n=round((Q*log(2))/(2*pi),0);
% fo=100;
% wo=(2*pi)/fo;
% dw=(2*pi)*(wo/Q);

% % % % % Caso 4
% m=0.3;
% k=90;
% b=4;
% Fo=2;
% wf=30;
% wo=sqrt(k/m);
% B=b/(2*m);
% Q=wo/(2*B);
% A=((Fo/k)*(wo/wf))/(sqrt((((wo/wf)-(wf/wo))^2)+(1/(Q^2))));
% Amax=(Fo/k)*Q;

% % % % % Caso 5
% Q=20;
% Vmax=3;
% L=1.4;
% m=50;
% g=9.8;
% wo=sqrt(g/L);
% ET=(1/2)*m*(Vmax^2);
% dE=(2*pi*ET)/Q;
% T=(2*pi)/wo;
% P=dE/((2*pi)/wo);

% % % % % % Caso 6
% wo=21.5;
% P=40;
% dw=(P*2*pi)/(wo);
% Dw=2;
% Q=wo/Dw;
% w=(Dw*Q)/(2*pi);

% % % % % % Caso 7
% m=3;
% L=0.033;
% g=9.81;
% Ao=1.4e-3;
% Q=18;
% wo=sqrt(g/L);
% k=(wo^2)*m;
% Amax=Ao*Q;
% wf=1.04*wo;
% Fo=(k*Amax)/Q;
% Pmed=(((Fo^2)*wo)/(2*k*Q))*(1/((((wo/wf)-(wf/wo))^2)+1/(Q^2)));

% % % % % Caso 8
% Q=sqrt(1/(L*C))/(R/L);
% q=(Vo*C*(Wo/wf))/sqrt((((wo/wf)-(wo/wf))^2)+1/(Q^2));

% % % % % Caso 9
k=1080;
m=30;
C=0;
b=C;
Vo=25;
Fo=Vo;
C=75e-3;
wo=sqrt(k/m);
wf=1.04*wo;