clc;
clear;
close all;

Fs = 1000;

t = 0:1/Fs:1;

x = sin(2*pi*50*t) + 0.3*randn(size(t));

figure;
plot(t,x);

title('Sinal no Tempo');

X = fft(x);

figure;
plot(abs(X));

title('Espectro do Sinal');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;