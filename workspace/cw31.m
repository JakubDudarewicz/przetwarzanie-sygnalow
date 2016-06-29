%FIR

n = [-16:16]; %rzad filtru

ft = 5500; %czestotliwosc graniczna
fs = 16000;

wg = 2*pi*ft/fs;
h = (wg/pi)*sinc(wg*n/pi); %odpowiedz impulsowa
w = blackman(33)';
hw = h.*w;
freqz(hw,1,512,fs);

%samples vector
na=[0:127];

%signal frequency
f=500;

%time vectors
t=na/fs;

%signal model
a=sin(2*pi*f*t);
xa=sign(a);

xf = filter2(hw, xa);

figure
subplot(211)
plot(xa)
subplot(212)
plot(xf)