%sampling frequency
fs=96000;

%samples vector
n=[0:500];

%signal frequency
f1=800;
f2=2000;
f3=4500;

%time vectors
t=(n/fs);
t1=2*pi*t;

%signal model
x=sin(t1*f1)+sin(t1*f2)+sin(t1*f3);

rzad = 10; %rzad
fs = 16000; %probkowanie
teta = 0.1; %graniczna
%czestotliwosci analogowe
omega = 2*fs*tan(pi*teta/2);
%znormalizowany prototyp filtru analogowego
[z, p, k] = cheb2ap(rzad,1);
%figure(1);
%zplane(z,p);
%transmitancja filtru znormalizowanego
[num, den] = zp2tf(z,p,k);
%denormalizacja
[numt, dent] = lp2hp(num, den, omega);
%transmitancja filtru cyfrowego
[BB, AA] = bilinear(numt, dent, fs);

y=filter(BB, AA, x);

subplot(211);
plot(t, x);
title('sygnal wejsciowy');
subplot(212);
plot(t, y);
title('sygnal wyjsciowy');