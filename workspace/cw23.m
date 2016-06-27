%DFT IDFT

a = [0,0,0,0,0,8,0,j*8,0,-j*8,0,8,0,0,0,0];
x = ifft(a);
x2 = [x,x,x,x,x,x,x,x];
a2 = fft(x2);

figure
subplot(221);
stem(real(a));
hold on
stem(imag(a), 'r');
title("transformata sygnalu");
subplot(222);
stem(x);
title("sygnal");
subplot(223);
stem(x2);
title("wydluzony sygnal");
subplot(224);
stem(real(a2));
hold on
stem(imag(a2), 'r');
title("transformata wydluzonego");
