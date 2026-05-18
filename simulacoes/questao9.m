clc;
clear;
close all;

N = 256;
n = 0:N-1;

f1 = 0.1;
f2 = 0.2;

x = sin(2*pi*f1*n) + 0.5*sin(2*pi*f2*n);

X = fft(x);

figure;
plot(abs(X));

title('Espectro com Harmonica');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;