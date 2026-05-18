% =========================================================
% QUESTAO 10
% Analise espectral de sinal com ruido
% =========================================================

clc;
clear;
close all;

% Frequencia de amostragem
Fs = 1000;

% Vetor de tempo
 t = 0:1/Fs:1;

% Geracao do sinal senoidal
x = sin(2*pi*50*t);

% Adicao de ruido gaussiano
x = x + 0.3*randn(size(t));

% Plot do sinal no dominio do tempo
figure;
plot(t,x);

title('Sinal no Dominio do Tempo');
xlabel('Tempo (s)');
ylabel('Amplitude');
grid on;

% FFT do sinal
X = fft(x);

% Plot do espectro
figure;
plot(abs(X));

title('Espectro do Sinal');
xlabel('Frequencia');
ylabel('|X(f)|');
grid on;
