%reconstruction of modelled analog signals

%sampling frequency
fs=16000;

%samples vector
n=[0:127];

%time vectors
t=n/fs;

%signal model
xa=sin(2*pi*4000*t)+sin(2*pi*4125*t);
xb=sin(2*pi*4000*t)+sin(2*pi*4250*t);
xc=sin(2*pi*4000*t)+sin(2*pi*4500*t);
xd=sin(2*pi*4062*t);

%windows
ham = rot90(hamming(128));
bla = rot90(blackman(128));
bar = rot90(bartlett(128));

figure
subplot(231);
stem(xd);
title("sygnal wejsciowy");
subplot(234);
stem(xd.*ham);
title("sygnal wejsciowy po oknie Hamminga");
subplot(2,3,[2,3]);
stem(abs(fft(xd)));
title("widmo sygnalu");
subplot(2,3,[5,6]);
stem(abs(fft(xd.*ham)));
title("widmo sygnalu po oknie Hamminga");

figure
subplot(231);
stem(xd);
title("sygnal wejsciowy");
subplot(234);
stem(xd.*bla);
title("sygnal wejsciowy po oknie Blackmana");
subplot(2,3,[2,3]);
stem(abs(fft(xd)));
title("widmo sygnalu");
subplot(2,3,[5,6]);
stem(abs(fft(xd.*bla)));
title("widmo sygnalu po oknie Blackmana");

figure
subplot(231);
stem(xd);
title("sygnal wejsciowy");
subplot(234);
stem(xd.*bar);
title("sygnal wejsciowy po oknie Bartletta");
subplot(2,3,[2,3]);
stem(abs(fft(xd)));
title("widmo sygnalu");
subplot(2,3,[5,6]);
stem(abs(fft(xd.*bar)));
title("widmo sygnalu po oknie Bartletta");