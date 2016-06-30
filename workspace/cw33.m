%FIR

n=120;
ft = 600 /8000;
w=blackman(n+1); %funkcja okna
h=fir1(n, ft, 'high', w);
H = fft(h);
freqz(h,1,512,16000)