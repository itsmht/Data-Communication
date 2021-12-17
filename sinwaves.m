
close all;
clear all;
clc;
A1= 19;
A2= 71;
fs=3958;
j1 = deg2rad(97);
j2=deg2rad(30);
t=-1.5/fs:1/20000000:1.5/fs;
x1=A1*cos(2*pi*(fs)*t+j1);
x2=A2*cos(2*pi*(fs)*t+j2);
plot(t,x1)
hold on
plot(t,x2)
hold off
title ('Sijan shariar annanto')
xlabel('Time')
ylabel('Amplitude')
 
figure;
plot(t,abs(x1));
title('Verification of x1')
xlabel('Time')
ylabel('Amplitude')
figure;
plot(t,angle(x1));
title('Verification of phase for x1')
xlabel('Time')
ylabel('Amplitude')
 
figure;
plot(t,abs(x2));
title('Verification of x2')
xlabel('Time')
 
ylabel('Amplitude')
figure;
plot(t,angle(x2));
title('Verification of phase for x2')
xlabel('Time')
ylabel('Amplitude') 
 
figure;
subplot(3,1,1);
plot(t,x1);
title('t and x1')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2);
plot(t,x2);
title('t and x2');
xlabel('Time')
ylabel('Amplitude')
 
x3=x1+x2;
subplot(3,1,1);
plot(t,x1);
title('t and x1')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2);
plot(t,x2);
title('t and x2');
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,3);
plot(t,x3);
title('t and x3');
xlabel('Time')
ylabel('Amplitude')