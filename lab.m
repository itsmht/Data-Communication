clear all;
clc;
close all;
fs = 4001; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time duration
A1 = 80; % 1st Amplitude
A2 = 10; % 2nd Amplitude
signal = 80*cos(2*pi*(400*100)*t);
partition = linspace (-60,60,3);
codebook = linspace (-80,80,4);
[index,quants] = quantiz(signal,partition,codebook);
figure
plot(t,signal,t,quants,'.')
title('Md. Musfiqur Rahman');
legend('Original signal','Quantized signal');
