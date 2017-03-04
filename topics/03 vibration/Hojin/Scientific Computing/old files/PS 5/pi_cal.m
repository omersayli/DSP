dx = 0.01;
n = 10000;
x = -n:dx:n;

temp_sum = 0;
for i = 1:length(x)
    temp_sum = temp_sum + dx*(1/(x(i)^2+1));
end

disp(temp_sum)

%%

r = 0;
temp_prod = 1;

for i = 1:10
    r = sqrt(2+r);
    temp_prod = temp_prod*r/2;    
end

disp(2/temp_prod)

%%

n = 10000;
x = 1:2:n;

temp_sum = 0;
for i = 1:length(x)
    temp_sum = temp_sum -(-1)^i*4/x(i);
end

disp(temp_sum)

%%