% probkowanie sinusa

n=10; %długość obserwacji
k=100; %liczba próbek
t=[1:k];

H = figure;

m=500;
a=sin(2*pi*n*t/m);
subplot(221);
plot(a);
title("500");

m=200;
a=sin(2*pi*n*(t/m));
subplot(222);
plot(a);
title("200");

m=100;
a=sin(2*pi*n*t/m);
subplot(223);
plot(a);
title("100");

m=20;
a=sin(2*pi*n*t/m);
subplot(224);
plot(a);
title("20");

clear;