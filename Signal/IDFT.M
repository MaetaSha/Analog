clc;
clear all;
close all;
xk=input('enter the sequence: ');
N=input('enter the value of N: ');
disp(N);
if iscell(xk)
    xk = cell2mat(xk);
end


if N > length(xk)
    xk = [xk zeros(1, N-length(xk))];
end

m=zeros(1,N);
for n=0:N-1
    for k=0:N-1
        m(n+1)=m(n+1)+xk(k+1)*exp(1i*2*pi*k*n/N);
    end
end
m=m/N;
disp(m);
figure
stem(real(m));
xlabel('n');
ylabel('y(n)');
title('IDFT value');
grid on;
