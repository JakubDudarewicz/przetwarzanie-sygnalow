%modulowanie sinusa

n=1; %długość obserwacji
k=1000; %liczba próbek
t=[1:k]; %probki
m=500; %czestotliwosc obserwacji

a=sin(2*pi*n*t/m);
b=(0.5).*sin((10*2*pi*n*t/m)+pi);

c=a.*b;

figure

subplot(121)
plot(c)
subplot(222)
plot(a)
subplot(224)
plot(b)