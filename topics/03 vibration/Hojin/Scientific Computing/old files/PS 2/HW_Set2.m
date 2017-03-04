n = 20;
r = 1/2;
figure(1);  hold on
temp_sum = 0;
for i = 0:n
    temp_sum = temp_sum + r^i;
    plot(i,temp_sum,'.')
end
hold off
disp(temp_sum)

R = 1/(1-1/2);


%%
temp_sum = 0;
r = 1/2;
i = 0;
while r^i > 10^(-3)
    temp_sum = temp_sum + r^i
    i = i + 1;
end
temp_sum   

%%
temp_sum = 0;
r = 1/2;
i = 0;
while temp_sum <= 1+1/2
    temp_sum = temp_sum + r^i;
    i = i + 1;
end
i-2


%%
a = 0;
b = pi;
delta = 0.01;
x = a:delta:b;
y = sin(x);

plot(x,y)

temp_area = 0;
for i = 1:length(x)-1
    temp_area = temp_area + delta*((y(i)+y(i+1))/2);
end
temp_area

temp_area2 = 0;
for i = 1:length(x)-1
    temp_area2 = temp_area2 + delta*y(i);
end
temp_area2

%%
a = 0;
delta = 0.01;

dy = (sin(a+delta) - sin(a))/delta












