%FIR

n = [-16:16]; %rzad filtru

ft = 6000; %czestotliwosc graniczna
fs = 44000;
t=n/fs;

wg = 2*pi*ft/fs;
h = (wg/pi)*sinc(wg*n/pi).*sin(2*pi*6000*t); %odpowiedz impulsowa
w = hamming(33)';
hw = h.*w;
freqz(hw,1,512,fs);

%samples vector
na=[0:511];

%signal frequency
f=500;

%time vectors
ta=na/fs;