D = fdesign.lowpass('Fp', 0.1);
Hb = design(D, 'butter');
Hc1 = design(D, 'cheby1');
Hc2 = design(D, 'cheby2');

freqz(Hb);
freqz(Hc1);
freqz(Hc2);