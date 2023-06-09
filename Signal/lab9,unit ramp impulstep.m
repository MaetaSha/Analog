clc;
clear all;
close all;

n0 = -10:10;
x = [(n0>=0)==1];
subplot(3,1,1);
stem(n0,x);
title('Unit Step Signal');
xlabel('Discrete Time');
ylabel('Amplitude');

y = [(n0 == 0) ==1];
subplot(3,1,2);
stem(n0,y);
title('Unit Impulse Signal');
xlabel('Discrete Time');
ylabel('Amplitude');

k = [(((n0>=1)==1).*n0)];
subplot(3,1,3);
stem(n0,k);
title('Unit Ramp Signal');
xlabel('Discrete Time');
ylabel('Amplitude');
