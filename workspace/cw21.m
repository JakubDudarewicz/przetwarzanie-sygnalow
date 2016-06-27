%DFT

%sampling frequency
fs=16000;

%samples vector
n_8=[0:7];
n_16=[0:15];
n_20=[0:19];

%time vectors
t_8=n_8/fs;
t_16=n_16/fs;
t_20=n_20/fs;

%signal model
xa = ones(8,1);
xb = sin(2 * pi * 2000 * t_8);
xc = sin(2 * pi * 4000 * t_8);
xd = sin(2 * pi * 6000 * t_8);
xe = sin(2 * pi * 8000 * t_8);
xf = cos(2 * pi * 4000 * t_8);
xg = cos(2 * pi * 8000 * t_8);
xh = sin(2 * pi * 4000 * t_8 + pi / 8);
xi = sin(2 * pi * 8000 * t_8 + pi / 8);
xj = ones(8,1)*(-1);
xk = ones(16,1);
xl = sin(2 * pi * 2000 * t_8);
xm = sin(2 * pi * 2000 * t_16);
xn = sin(2 * pi * 2000 * t_20);
xo = j * sin(2 * pi * 4000 * t_8);
xp = j * cos(2 * pi * 4000 * t_8);
xq = sin(2 * pi * 4000 * t_8) + j * sin(2 * pi * 4000 * t_8);
xr = sin(2 * pi * 4000 * t_8) + j * cos(2 * pi * 4000 * t_8);

%fourrier transfortms

dfta = fft(xa);
dftb = fft(xb);
dftc = fft(xc);
dftd = fft(xd);
dfte = fft(xe);
dftf = fft(xf);
dftg = fft(xg);
dfth = fft(xh);
dfti = fft(xi);
dftj = fft(xj);
dftk = fft(xk);
dftl = fft(xl);
dftm = fft(xm);
dftn = fft(xn);
dfto = fft(xo);
dftp = fft(xp);
dftq = fft(xq);
dftr = fft(xr);

figure
subplot(221)
stem(xa)
title("sygnal")
subplot(222)
stem(abs(dfta))
title("modul")
subplot(223)
stem(real(dfta))
title("rzeczywista")
subplot(224)
stem(imag(dfta))
title("urojona")

figure
subplot(221)
stem(xb)
title("sygnal")
subplot(222)
stem(abs(dftb))
title("modul")
subplot(223)
stem(real(dftb))
title("rzeczywista")
subplot(224)
stem(imag(dftb))
title("urojona")

figure
subplot(221)
stem(xc)
title("sygnal")
subplot(222)
stem(abs(dftc))
title("modul")
subplot(223)
stem(real(dftc))
title("rzeczywista")
subplot(224)
stem(imag(dftc))
title("urojona")

figure
subplot(221)
stem(xd)
title("sygnal")
subplot(222)
stem(abs(dftd))
title("modul")
subplot(223)
stem(real(dftd))
title("rzeczywista")
subplot(224)
stem(imag(dftd))
title("urojona")

figure
subplot(221)
stem(xe)
title("sygnal")
subplot(222)
stem(abs(dfte))
title("modul")
subplot(223)
stem(real(dfte))
title("rzeczywista")
subplot(224)
stem(imag(dfte))
title("urojona")

figure
subplot(221)
stem(xf)
title("sygnal")
subplot(222)
stem(abs(dftf))
title("modul")
subplot(223)
stem(real(dftf))
title("rzeczywista")
subplot(224)
stem(imag(dftf))
title("urojona")

figure
subplot(221)
stem(xg)
title("sygnal")
subplot(222)
stem(abs(dftg))
title("modul")
subplot(223)
stem(real(dftg))
title("rzeczywista")
subplot(224)
stem(imag(dftg))
title("urojona")

figure
subplot(221)
stem(xh)
title("sygnal")
subplot(222)
stem(abs(dfth))
title("modul")
subplot(223)
stem(real(dfth))
title("rzeczywista")
subplot(224)
stem(imag(dfth))
title("urojona")

figure
subplot(221)
stem(xi)
title("sygnal")
subplot(222)
stem(abs(dfti))
title("modul")
subplot(223)
stem(real(dfti))
title("rzeczywista")
subplot(224)
stem(imag(dfti))
title("urojona")

figure
subplot(221)
stem(xj)
title("sygnal")
subplot(222)
stem(abs(dftj))
title("modul")
subplot(223)
stem(real(dftj))
title("rzeczywista")
subplot(224)
stem(imag(dftj))
title("urojona")

figure
subplot(221)
stem(xk)
title("sygnal")
subplot(222)
stem(abs(dftk))
title("modul")
subplot(223)
stem(real(dftk))
title("rzeczywista")
subplot(224)
stem(imag(dftk))
title("urojona")

figure
subplot(221)
stem(xl)
title("sygnal")
subplot(222)
stem(abs(dftl))
title("modul")
subplot(223)
stem(real(dftl))
title("rzeczywista")
subplot(224)
stem(imag(dftl))
title("urojona")

figure
subplot(221)
stem(xm)
title("sygnal")
subplot(222)
stem(abs(dftm))
title("modul")
subplot(223)
stem(real(dftm))
title("rzeczywista")
subplot(224)
stem(imag(dftm))
title("urojona")

figure
subplot(221)
stem(xn)
title("sygnal")
subplot(222)
stem(abs(dftn))
title("modul")
subplot(223)
stem(real(dftn))
title("rzeczywista")
subplot(224)
stem(imag(dftn))
title("urojona")

figure
subplot(221)
stem(imag(xo))
title("czesc urojona sygnalu")
subplot(222)
stem(abs(dfto))
title("modul")
subplot(223)
stem(real(dfto))
title("rzeczywista")
subplot(224)
stem(imag(dfto))
title("urojona")

figure
subplot(221)
stem(imag(xp))
title("czesc urojona sygnalu")
subplot(222)
stem(abs(dftp))
title("modul")
subplot(223)
stem(real(dftp))
title("rzeczywista")
subplot(224)
stem(imag(dftp))
title("urojona")

figure
subplot(221)
stem(abs(xq))
title("modul sygnalu")
subplot(222)
stem(abs(dftq))
title("modul")
subplot(223)
stem(real(dftq))
title("rzeczywista")
subplot(224)
stem(imag(dftq))
title("urojona")

figure
subplot(221)
stem(abs(xr))
title("modul sygnalu")
subplot(222)
stem(abs(dftr))
title("modul")
subplot(223)
stem(real(dftr))
title("rzeczywista")
subplot(224)
stem(imag(dftr))
title("urojona")