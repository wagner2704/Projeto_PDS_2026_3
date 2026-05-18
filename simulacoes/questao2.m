% =========================================================
% QUESTAO 2
% Soma de duas senoides e analise espectral
% =========================================================

clc;
clear;
close all;

% Numero de amostras
N = 256;

% Vetor de tempo discreto
n = 0:N-1;

% Frequencias normalizadas
f1 = 0.1;
f2 = 0.25;

% Geracao das senoides
x1 = sin(2*pi*f1*n);
x2 = sin(2*pi*f2*n);

% Soma dos sinais
x = x1 + x2;

% Plot do sinal resultante
figure;
plot(n,x);
title('Sinal Resultante no Dominio do Tempo');
xlabel('Amostras');
ylabel('Amplitude');
grid on;

% Calculo da FFT
X = fft(x);

% Vetor de frequencia
f = (0:N-1)/N;

% Plot do espectro
figure;
plot(f,abs(X));
title('FFT do Sinal Composto');
xlabel('Frequencia Normalizada');
ylabel('|X(f)|');
grid on;
