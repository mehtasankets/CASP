t = list()
y = list()
j = 1;

for i = 0:0.01:0.5
  t(j) = 0;
  j = j + 1;
end

for i = 0:0.02:0.5
  t(j) = sin(2*%pi*i);
  j = j + 1;
end

for i = 0:0.01:0.5
  t(j) = 0;
  j = j + 1;
end

for i = 1:j-1
  plot(i, t(i), '.')
end