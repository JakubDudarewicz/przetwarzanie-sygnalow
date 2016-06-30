%FIR

n=200;
fs=48000;
ft1 = 100*(2/fs);
ft2 = 16000*(2/fs);
w=bartlett(n+1);
h1=impz(fir1(n, ft1, 'low', w));
h2=impz(fir1(n, ft2, 'low', w));
h=(h1+h2)/2;
freqz(h)