%sampling signals of known frequency with known frequency

%sampling frequency
fsa=4000;
fsb=4020;
fsc=8000;
fsd=19000;
fse=44000;

%samples vector
n=[0:127];

%signal frequency
f=2000;

%time vectors
ta=n/fsa;
tb=n/fsb;
tc=n/fsc;
td=n/fsd;
te=n/fse;


%signal model
xa=sin(2*pi*f*ta);
xb=sin(2*pi*f*tb);
xc=sin(2*pi*f*tc);
xd=sin(2*pi*f*td);
xe=sin(2*pi*f*te);

subplot(131)
stem(ta, xa)
title('sampling rate 4000Hz')
subplot(232)
stem(tb, xb)
title('sampling rate 4020Hz')
subplot(233)
stem(tc, xc)
title('sampling rate 8000Hz')
subplot(235)
stem(td, xd)
title('sampling rate 19000Hz')
subplot(236)
stem(te, xe)
title('sampling rate 44000Hz')