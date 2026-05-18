% =========================================================
% QUESTAO 4
% Aplicacao da janela de Hamming
% =========================================================

clc;
clear;
close all;

% Numero de amostras
N = 128;

% Vetor discreto
n = 0:N-1;

% Frequencia da senoide
f0 = 0.13;

% Geracao do sinal
x = sin(2*pi*f0*n);

% FFT sem janela
X1 = fft(x);

% Geracao da janela de Hamming
w = hamming(N)';

% Aplicacao da janela
xw = x .* w;

% FFT com janela
X2 = fft(xw);

% Comparacao dos espectros
figure;

subplot(2,1,1);
plot(abs(X1));
title('FFT Sem Janela');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;

subplot(2,1,2);
plot(abs(X2));
title('FFT Com Janela de Hamming');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
