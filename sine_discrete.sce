t = [0:0.04:1]
printf("Enter value of f : ");
f = scanf("%d");
printf("Enter value of phi : ");
phi = scanf("%d");
y = sin((2 * %pi * f * t) + phi);
plot(t, y, '*');