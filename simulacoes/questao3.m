% =========================================================
% QUESTAO 3
% Demonstracao do fenomeno de aliasing
% =========================================================

clc;
clear;
close all;

% Taxa de amostragem alta
Fs1 = 1000;

% Taxa de amostragem reduzida
Fs2 = 200;

% Frequencia do sinal
f0 = 180;

% Vetores de tempo
 t1 = 0:1/Fs1:1;
 t2 = 0:1/Fs2:1;

% Geracao dos sinais
x1 = sin(2*pi*f0*t1);
x2 = sin(2*pi*f0*t2);

% FFT dos sinais
X1 = fft(x1);
X2 = fft(x2);

% Plot dos espectros
figure;

subplot(2,1,1);
plot(abs(X1));
title('FFT com Alta Taxa de Amostragem');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;

subplot(2,1,2);
plot(abs(X2));
title('FFT com Baixa Taxa - Aliasing');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
