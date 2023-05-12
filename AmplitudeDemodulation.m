clc;
clear all;
close all;
vm=1;
vc=1;
fc=100;
fm=5;
fs=13000;
t=0:1/fs:0.5;
m=vm*sin(2*pi*fm*t);
c=vc*sin(2*pi*fc*t);
y=ammod(m,fc,fs);
subplot(4,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');

subplot(4,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');

subplot(4,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal');

d=demod(y,fc,fs,'am');
subplot(4,1,4);
plot(t,d);
xlabel('Time');
ylabel('Amplitude');
title('Demodulated signall');
grid on;

