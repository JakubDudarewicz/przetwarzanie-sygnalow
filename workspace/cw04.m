%skok jednostkowy

be = 10;
en = 30;
dur = 100;

a = zeros(dur,1);

for i = be:en
  a(be, 1) = 1;
  be = be + 1;
end

figure;
plot(a);
axis([0, 100, -0.5, 1.5]);
title("skok jednostkowy");