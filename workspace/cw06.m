%przebieg wykładniczy zespolony

t=[0:0.1:2*pi];

zesp=e.^(t.*j);
rzecz=real(zesp);
uroj=imag(zesp);
modul=abs(zesp);
faza=angle(zesp);

figure

subplot(121)
plot(zesp)
title("plaszczyzna zespolona")
subplot(243)
plot(modul)
title("modul")
subplot(244)
plot(rzecz)
title("skladnik rzeczywisty")
subplot(247)
plot(uroj)
title("skladnik urojony")
subplot(248)
plot(faza)
title("kat fazowy")