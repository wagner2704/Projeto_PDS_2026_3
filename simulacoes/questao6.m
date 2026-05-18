clc;
clear;
close all;

x = [1 2 3 4];
N = length(x);

X_manual = zeros(1,N);

for k = 0:N-1
    for n = 0:N-1
        X_manual(k+1) = X_manual(k+1) + x(n+1)*exp(-1j*2*pi*k*n/N);
    end
end

X_fft = fft(x);

disp(X_manual);
disp(X_fft);