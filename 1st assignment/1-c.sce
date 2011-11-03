n = 1:100
y1 = cos(3 * %pi * (n / 7));
y2 = sin(2 * %pi * (n / 7));
mtlb_axis([-10, 110, -5, 5]);
plot(n,y1, n, y2);

//periodic signal