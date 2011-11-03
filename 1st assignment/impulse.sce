x = 0:44;
t = 0:10;
y = [t, (11-t), -t, -(11-t), 0];
for i = 1:10
    plot(x, y);
    x = x + length(x)-1;
end