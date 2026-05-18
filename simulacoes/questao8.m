% =========================================================
% QUESTAO 8
% Influencia do numero de amostras na resolucao espectral
% =========================================================

clc;
clear;
close all;

% Frequencia da senoide
f0 = 0.12;

% Dois tamanhos diferentes de sinal
N1 = 64;
N2 = 256;

% Vetores discretos
n1 = 0:N1-1;
n2 = 0:N2-1;

% Geracao dos sinais
x1 = sin(2*pi*f0*n1);
x2 = sin(2*pi*f0*n2);

% FFT dos sinais
X1 = fft(x1);
X2 = fft(x2);

% Comparacao dos espectros
figure;

subplot(2,1,1);
plot(abs(X1));
title('FFT com N = 64');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;

subplot(2,1,2);
plot(abs(X2));
title('FFT com N = 256');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
