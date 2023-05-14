clc;
clear all;
close all;

x = input('Enter the sequence x[n]=');
N = input('Enter N=');
disp(N);
if iscell(x)
    x = cell2mat(x);
end


subplot(3,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Signal');
grid on;

% Zero-padding if N > length(x)
if N > length(x)
    x = [x zeros(1, N-length(x))];
end

y = zeros(1,N);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end

disp(y);
subplot(3,1,2);
stem(abs(y)); % Plot magnitude of DFT
xlabel('k');
ylabel('|X(k)|');
title('Magnitude of DFT Values ');
grid on;
