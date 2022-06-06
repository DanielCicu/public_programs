clear;clc
% PSK a BPSK (Binario)
% Diagrama de constelación
% I:In phase (signal sen(t))
% Q:Quadratura (signal cos(t))
% '1' en fase, '0' desfase de 180; n=# dee bits
format
syms M n Q I fun
M=2^n;
xlabel('I');
ylabel('Q');
%%
clear;clc
% QPSK Q:Quadrature (4 símbolos)
% Para 'QI': primer cuadrante '11' , segundo cuadrante '10', tercer 
% cuadrante '00', cuarto cuadrante '01'
format
syms M n Q I fun
Q=[0; 0; 1; 1];
I=[0; 1; 0; 1];
fun=["-sen(wt)-cos(wt)"; "sen(wt)-cos(wt)"; "-sen(wt)+cos(wt)"; "sen(wt)+cos(wt)"];
am_fun_deg=["sqrt(2)sen(wt+225°)"; "sqrt(2)sen(wt+315°)"; "sqrt(2)sen(wt+135°)"; "sqrt(2)sen(wt+45°)"];
n=2;
M=2^n;
m=sqrt(2);
tabla=table(Q, I, fun, am_fun_deg);
%%
clear;clc
% Para 3 bits (8 símbolos)-> 8 PSK (Solo cambios en fase), 8 QAM (Cambios
% en fase y amplitud)
% C=>Amplitud; C='0' A=0.541V, C='1' A=1.307V
% I,Q=>Signo; I='0' Q='0' Negativo, I='1' Q='1' Positivo
% 8 PSK
format
syms M n Q I C fun
n=3;
M=2^n;
C=[0; 1; 0; 1; 0; 1; 0; 1];
I=[0; 0; 1; 1; 0; 0; 1; 1];
Q=[0; 0; 0; 0; 1; 1; 1; 1];
fun=["-0.541sen(wt)-1.307cos(wt)"; "-1.307sen(wt)-0.541cos(wt)"; "0.541sen(wt)-1.307cos(wt)"; "1.307sen(wt)-0.541cos(wt)"; "-0.541sen(wt)+1.307cos(wt)"; "-1.307sen(wt)+0.541cos(wt)"; "0.541sen(wt)+1.307cos(wt)"; "1.307sen(wt)+0.541cos(wt)"];
T=[247.5141; 202.4859;292.4859;337.5141;112.4859;157.5141;67.5141;22.4859];
Vector=["sqrt(2)sen(wt+247.5141)"; "sqrt(2)sen(wt+202.4859)"; "sqrt(2)sen(wt+292.4859)"; "sqrt(2)sen(wt+337.5141)"; "sqrt(2)sen(wt+112.4859)"; "sqrt(2)sen(wt+157.5141)"; "sqrt(2)sen(wt+67.5141)"; "sqrt(2)sen(wt+22.4859)"];
tabla=table(Q, I, C, fun, T,Vector);
%%
% 8 QAM
clear;clc
format
syms M n Q I C fun
n=3;
M=2^n;
C=[0; 1; 0; 1; 0; 1; 0; 1];
I=[0; 0; 1; 1; 0; 0; 1; 1];
Q=[0; 0; 0; 0; 1; 1; 1; 1];
fun=["-0.541sen(wt)-0.541cos(wt)"; "-1.307sen(wt)-1.307cos(wt)"; "0.541sen(wt)-0.541cos(wt)"; "1.307sen(wt)-1.307cos(wt)"; "-0.541sen(wt)+0.541cos(wt)"; "-1.307sen(wt)+1.307cos(wt)"; "0.541sen(wt)+0.541cos(wt)"; "1.307sen(wt)+1.307cos(wt)"];
Vector=[" 0.7651sen(wt+225)"; "1.8484sen(wt+225)"; "sqrt(2)sen(wt+315)"; "sqrt(2)sen(wt+315)"; "sqrt(2)sen(wt+135)"; "sqrt(2)sen(wt+135)"; "sqrt(2)sen(wt+45)"; "sqrt(2)sen(wt+45)"];
tabla=table(Q, I, C, fun, Vector);