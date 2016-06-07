%sinusoidy o pulsacji znormalizowanej

n=[0:127];

xa=sin((pi/20)*n);
xb=sin((pi/4)*n);
xc=sin((pi/2)*n);
xd=sin((pi/2+2*pi)*n);
xe=sin((pi/2+0.01)*n);

subplot(131)
stem(xa)
title('\pi/20')
subplot(232)
stem(xb)
title('\pi/4')
subplot(233)
stem(xc)
title('\pi/2')
subplot(235)
stem(xd)
title('\pi/20 + 2\pi')
subplot(236)
stem(xe)
title('\pi/20 + 0.01')
