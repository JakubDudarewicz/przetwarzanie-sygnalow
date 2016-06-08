%variable frequency signals sampled with constant frequency

%sampling frequency
fs=4000;

%samples vector
n=[0:127];

%signal frequency
fa=1800;
fb=2200;
fc=5800;
fz=100;

%time vectors
t=n/fs;

%signal model
xa=sin(2*pi*fa*t);
xb=sin(2*pi*fb*t);
xc=sin(2*pi*fc*t);
xz=sin(2*pi*fz*t);

subplot(311)
stem(t, xa)
title('f = 1800Hz', 'fontsize', 15)
subplot(312)
stem(t, xb)
title('f = 2200Hz', 'fontsize', 15)
subplot(313)
stem(t, xc)
title('f = 5800Hz', 'fontsize', 15)