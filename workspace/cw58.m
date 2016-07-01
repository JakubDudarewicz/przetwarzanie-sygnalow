%XCORR

s=sin([0:0.01:4*pi]);
ss=s+rand(1,length(s))*4-2;

[c, lags] = xcorr(s);
[cc, lags1] = xcorr(s,ss);

subplot(221)
plot(s)
title('sygnal wejsciowy')
subplot(222)
plot(ss)
title('sygnal zaszumiony')
subplot(223)
plot(c)
title('autokorelacja sygnalu zaszumionego')
subplot(224)
plot(c,cc)
title('korelacja sygnalow')
