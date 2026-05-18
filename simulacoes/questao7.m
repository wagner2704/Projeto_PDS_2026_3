% =========================================================
% QUESTAO 7
% Resposta ao impulso do sistema discreto
% =========================================================

clc;
clear;
close all;

% Numero de amostras da resposta
N = 30;

% Inicializacao da resposta ao impulso
h = zeros(1,N);

% Primeira amostra
h(1) = 1;

% Calculo da resposta recursiva
for n = 2:N

    h(n) = 0.8*h(n-1);

end

% Plot da resposta ao impulso
figure;
stem(0:N-1,h);

title('Resposta ao Impulso do Sistema');
xlabel('n');
ylabel('h[n]');
grid on;
