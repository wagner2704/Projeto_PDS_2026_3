% =========================================================
% QUESTAO 5
% Analise espectral de sinal com ruido
% =========================================================

clc;
clear;
close all;

% Numero de amostras
N = 256;

% Vetor discreto
n = 0:N-1;

% Frequencia do sinal
f0 = 0.15;

% Geracao da senoide
x = sin(2*pi*f0*n);

% Geracao de ruido gaussiano
ruido = 0.5*randn(1,N);

% Soma sinal + ruido
sinal = x + ruido;

% FFT do sinal ruidoso
X = fft(sinal);

% Plot do espectro
figure;
plot(abs(X));
title('FFT do Sinal com Ruido');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
