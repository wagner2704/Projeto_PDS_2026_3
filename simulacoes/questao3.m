clc;
clear;
close all;

Fs1 = 1000;
Fs2 = 200;

f0 = 180;

t1 = 0:1/Fs1:1;
t2 = 0:1/Fs2:1;

x1 = sin(2*pi*f0*t1);
x2 = sin(2*pi*f0*t2);

X1 = fft(x1);
X2 = fft(x2);

figure;
subplot(2,1,1);
plot(abs(X1));
title('FFT Alta Taxa');

subplot(2,1,2);
plot(abs(X2));
title('FFT Baixa Taxa - Aliasing');