% =========================================================
% QUESTAO 1
% Geracao de uma senoide discreta e analise espectral usando FFT
% =========================================================

clc;        % Limpa o terminal
clear;      % Remove variaveis da memoria
close all;  % Fecha todas as figuras abertas

% Numero de amostras do sinal
N = 128;

% Frequencia normalizada da senoide
f0 = 0.1;

% Vetor de amostras no tempo discreto
n = 0:N-1;

% Geracao da senoide discreta
x = sin(2*pi*f0*n);

% Plot do sinal no dominio do tempo
figure;
stem(n,x);
title('Sinal no Dominio do Tempo');
xlabel('Amostras');
ylabel('Amplitude');
grid on;

% Calculo da FFT do sinal
X = fft(x);

% Vetor de frequencia normalizada
f = (0:N-1)/N;

% Plot do espectro
figure;
plot(f,abs(X));
title('Espectro do Sinal usando FFT');
xlabel('Frequencia Normalizada');
ylabel('|X(f)|');
grid on;
