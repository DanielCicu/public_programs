clear
clc

R = 1e3;
Ap = 3;
As = 40;
fp = 5e3;
fs = 23e3;
E1 = sqrt((10^(0.1 * Ap)) - 1);
E2 = sqrt((10^(0.1 * As)) - 1);
nB = ceil(log10(E2/E1)/log10(fs/fp));
fact_escala = 1 / (2*pi*fp*R);

C1 = fact_escala * 3.546
C2 = fact_escala * 1.392
C3 = fact_escala * 0.2024