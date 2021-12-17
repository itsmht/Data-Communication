close all;
clear all;
clc;
fs=8000;
f=400;
t=0:1/fs:1-1/fs;
AMP1=12;
powfund=AMP1^2/2;
AMP2=8;
powharm = AMP2^2/2;
S=0.16;
FREQ1=939;
FREQ2=959;
j2 = 60*(pi/180); 

x1= AMP1*sin(2*pi*FREQ1*t); 

x2= AMP2*sin((2*pi*FREQ2*t)+j2);

plot(t,x1)
hold on
plot(t,x2);
axis([-0.1 0.1 -20 20]); 
hold off
title('Input signal (19-39596-1)');
xlabel('Time');
ylabel('Amplitude');
figure 
x=x1+x2;
plot(t,x)
title('Composite signal (19-39596-1)');
xlabel('Time');
ylabel('Amplitude');

x=AMP1*sin(2*pi*(FREQ1*100)*t)+AMP2*cos(2*pi*(FREQ2*100)*t)+S*randn(size(t));
signal=AMP1*sin(2*pi*(FREQ1*100)*t);
noise=S*randn(size(t));
noiseSignal=signal+noise;
SNR=snr(noiseSignal)
BW=obw(noiseSignal)
Capacity=BW*log2(1+SNR)

