%DFT

figure
subplot(211);
stem(ones(1,8));
title("sygnal wejsciowy");
subplot(212);
stem(abs(ifft(ones(1,8))));
title("transformata odwrotna");
