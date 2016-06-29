%FIR

ft = 1000;
fs = 8000;
filtr = fir1(34, 0.2, 'high', blackman(34));
freqz(filtr);
