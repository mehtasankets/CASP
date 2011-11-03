y = []
coefficients = []
function [value] = calculate(i,count)
    k=0
    new = 0.0
    value = 0
    l = i - count
    for j = l:(l+count-1)
        new = new + (-1 * coefficients($-k) * y(j))
        k = k + 1        
    end
    value = new / coefficients(1)
endfunction

count = input("Enter Highest Degree of the Differential Equation : ");
for i = 0:count
    printf("Enter coefficient of y[n-%d] :", i)
    coefficients(i+1) = input(" ");
end

for i = 1:count
    printf("Enter value of y[%d] : ", i-1);
    y(i) = input(" ");
    disp(i, count)
end

n = input("Enter upper limit : ")
if n <= count then
    disp("Wrong value of n given")
    exit()
end

for i = count+1:n+1
    y($+1) = calculate(i,count)
end

disp("Final Y values : ")
for i = 1:length(y)
    printf("\ty[%d] = %d\n", i-1, y(i))
end