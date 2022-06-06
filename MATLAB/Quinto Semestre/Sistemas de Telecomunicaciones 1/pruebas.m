clear
clc

M = 8;
x = randi([0 M-1],1000,1);
y = qammod(x,M,'UnitAveragePower',true);
avgPower = mean(abs(y).^2);
scatterplot(y)
title('64-QAM, Average Power = 1 W')