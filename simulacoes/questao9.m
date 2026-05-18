% =========================================================
% QUESTAO 9
% Analise de harmonicos em sinais discretos
% =========================================================

clc;
clear;
close all;

% Numero de amostras
N = 256;

% Vetor discreto
n = 0:N-1;

% Frequencia fundamental
f1 = 0.1;

% Segunda harmonica
f2 = 0.2;

% Sinal composto
x = sin(2*pi*f1*n) + 0.5*sin(2*pi*f2*n);

% FFT do sinal
X = fft(x);

% Plot do espectro
figure;
plot(abs(X));

title('Espectro com Harmonica');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
