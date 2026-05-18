% =========================================================
% QUESTAO 6
% Implementacao manual da DFT
% =========================================================

clc;
clear;
close all;

% Sinal discreto de entrada
x = [1 2 3 4];

% Numero de amostras
N = length(x);

% Inicializacao do vetor da DFT
X_manual = zeros(1,N);

% Implementacao direta da DFT
for k = 0:N-1

    for n = 0:N-1

        X_manual(k+1) = X_manual(k+1) + ...
            x(n+1)*exp(-1j*2*pi*k*n/N);

    end

end

% FFT utilizando funcao pronta do MATLAB
X_fft = fft(x);

% Exibicao dos resultados
fprintf('Resultado da DFT manual:\n');
disp(X_manual);

fprintf('Resultado da FFT:\n');
disp(X_fft);
