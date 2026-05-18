clc;
clear;
close all;

N = 256;
n = 0:N-1;

f0 = 0.15;

x = sin(2*pi*f0*n);

ruido = 0.5*randn(1,N);

sinal = x + ruido;

X = fft(sinal);

figure;
plot(abs(X));
title('FFT com Ruido');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;