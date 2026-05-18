clc;
clear;
close all;

f0 = 0.12;

N1 = 64;
N2 = 256;

n1 = 0:N1-1;
n2 = 0:N2-1;

x1 = sin(2*pi*f0*n1);
x2 = sin(2*pi*f0*n2);

X1 = fft(x1);
X2 = fft(x2);

figure;
subplot(2,1,1);
plot(abs(X1));
title('N = 64');

subplot(2,1,2);
plot(abs(X2));
title('N = 256');