t = [0:0.001:1]
printf("Enter value of f : ");
f = scanf("%d");
printf("Enter value of phi : ");
phi = scanf("%d");
y = sin((2 * %pi * f * t) + phi);
plot2d(t, y);