n = 10; %rzad
fs = 16000; %probkowanie
teta = 0.1; %graniczna
%czestotliwosci analogowe
omega = 2*fs*tan(pi*teta/2);
%znormalizowany prototyp filtru analogowego
[z, p, k] = cheb1ap(n, 1);
%figure(1);
%zplane(z,p);
%transmitancja filtru znormalizowanego
[num, den] = zp2tf(z,p,k);
%denormalizacja
[numt, dent] = lp2hp(num, den, omega);
figure(2);
freqs(numt,dent);
%transmitancja filtru cyfrowego
[BB, AA] = bilinear(numt, dent, fs);
figure(3);
freqz(BB,AA);