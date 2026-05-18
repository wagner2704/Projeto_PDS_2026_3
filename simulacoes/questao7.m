clc;
clear;
close all;

N = 30;

h = zeros(1,N);

h(1) = 1;

for n = 2:N
    h(n) = 0.8*h(n-1);
end

stem(0:N-1,h);

title('Resposta ao Impulso');
xlabel('n');
ylabel('h[n]');
grid on;