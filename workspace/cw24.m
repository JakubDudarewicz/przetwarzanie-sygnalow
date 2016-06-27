%okna

h = hamming(128);
hfft = fft(h);
b = bartlett(128);
bfft = fft(b);
b2 = blackman(128);
b2fft = fft(b2);


figure
subplot(211);
stem(h);
title("okno Hamminga");
subplot(212);
stem(hfft);
title("widmo okna Hamminga");

figure
subplot(211);
stem(b);
title("okno Bartletta");
subplot(212);
stem(bfft);

figure
title("widmo okna Bartletta");
subplot(211);
stem(b2);
title("okno Blackmana");
subplot(212);
stem(b2fft);
title("widmo okna Blackmana");
