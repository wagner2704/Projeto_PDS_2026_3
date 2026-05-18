clc;
clear;
close all;

N = 256;
n = 0:N-1;

f1 = 0.1;
f2 = 0.25;

x1 = sin(2*pi*f1*n);
x2 = sin(2*pi*f2*n);

x = x1 + x2;

X = fft(x);

f = (0:N-1)/N;

figure;
plot(f,abs(X));
title('FFT de Duas Senoides');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;