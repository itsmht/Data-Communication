
fs=8000;
f=400;
t=0:1/fs:1-1/fs;
A1=19;
powerfund=A1^2/2;
A2=19;
S=11;
vernoise=S^2/2;
C=3;
G=4;
x=A1*sin(2*pi*(C*100)*t)+A2*cos(2*pi*(G*100)*t)+S*randn(size(t));
signal=A1*sin(2*pi*(C*100)*t);
noise=S*randn(size(t));
noiseSignal=signal+noise;
SNR=snr(noiseSignal);