count = input("Enter lenght of x() :")
for i = 1:count
    printf("Enter x(%d) :",i)
    x1(i) = input(" ")
end

count = input("Enter lenght of h() :")
for i = 1:count
    printf("Enter h(%d) :",i)
    h1(i) = input(" ")
end

x = x1
h = h1
len = length(x) + length(h) - 1

for i = 1:len - length(x)
    x($ + 1) = 0
end
for i = 1:len - length(h)
    h($ + 1) = 0
end

y = zeros(1:len)
for n = 1:len
    for k=1:n
        y(n) = y(n) + (x(k)*h(n-k+1));
    end
end
disp( y, "Calculated Result : ");
disp(convol(x1,h1), "Using scilab inbuilt function : ");