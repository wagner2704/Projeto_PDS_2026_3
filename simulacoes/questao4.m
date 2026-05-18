clc;
clear;
close all;

N = 128;
n = 0:N-1;

f0 = 0.13;

x = sin(2*pi*f0*n);

X1 = fft(x);

w = hamming(N)';
xw = x .* w;

X2 = fft(xw);

figure;
subplot(2,1,1);
plot(abs(X1));
title('Sem Janela');

subplot(2,1,2);
plot(abs(X2));
title('Com Janela de Hamming');