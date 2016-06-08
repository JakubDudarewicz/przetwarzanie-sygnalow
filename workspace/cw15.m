%reconstruction of modelled analog signals

%sampling frequency
fsa=44000;
fsd=1000;

%samples vector
nd=[0:15];
na=[0:44*length(nd)];

%signal frequency
f=100;

%time vectors
ta=na/fsa;
td=nd/fsd;

%signal model
xa=sin(2*pi*f*ta);
xd=sin(2*pi*f*td);

%reconstructions
xl=interp1(td, xd, ta, "linear");
xn=interp1(td, xd, ta, "nearest");

xs=zeros(size(ta));
for  k = 1:length(td);
  st = xd(k)*sinc(fsd*(ta-td(k)));
  xs = xs + st;
end

hold on

subplot(222)
plot(ta, xs, 'r')
hold on
plot(ta, xa)
title("sygnal odtworzony interpolacja sinc", "fontsize", 12)

subplot(223)
plot(ta, xl)
title("sygnal odtworzony interpolacja linear", "fontsize", 12)

subplot(224)
plot(ta, xn)
title("sygnal odtworzony interpolacja nearest", "fontsize", 12)

subplot(221)
stem(td, xd)
hold on
plot(ta, xa)
title("sygnal analogowy i sprobkowany", "fontsize", 12)