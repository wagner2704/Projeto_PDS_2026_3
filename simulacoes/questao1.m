clc;
clear;
close all;

N = 128;
f0 = 0.1;

n = 0:N-1;

x = sin(2*pi*f0*n);

figure;
stem(n,x);
title('Sinal no Dominio do Tempo');
xlabel('n');
ylabel('Amplitude');

X = fft(x);

f = (0:N-1)/N;

figure;
plot(f,abs(X));
title('Espectro FFT');
xlabel('Frequencia Normalizada');
ylabel('|X(f)|');
grid on;