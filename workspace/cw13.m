%sampling signals of known frequency with known frequency

%sampling frequency
fs=4000;

%samples vector
n=[0:63];

%signal frequency
f=2000;

%time vectors
t=n/fs;


%signal model
xa=sin(2*pi*f*t);
xb=sin(2*pi*f*t + pi/4);
xc=sin(2*pi*f*t + pi/2);
xd=sin(2*pi*f*t + 0.11*pi);

subplot(221)
stem(t, xa)
title('\phi_1 = 0', 'fontsize', 15)
subplot(222)
stem(t, xb)
title('\phi_1 = \pi/4', 'fontsize', 15)
subplot(223)
stem(t, xc)
title('\phi_1 = \pi/2', 'fontsize', 15)
subplot(224)
stem(t, xd)
title('\phi_1 = 0.11\pi', 'fontsize', 15)