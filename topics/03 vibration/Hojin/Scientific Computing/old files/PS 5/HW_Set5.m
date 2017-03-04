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
clear all
n = 1000;
x = -1 + 2*rand(n,2);       % help rand
count = 0;
for j = 1:n
    if norm(x(j,:)) <= 1    % help norm
        count = count + 1;
    end
end

pi_est = (count/n)*4;
disp(pi_est)

% visualize 
w = 0:0.01:2*pi;
z = cos(w) + 1i*sin(w);

figure(1);  cla;    hold on
plot(x(:,1),x(:,2),'.');    
plot(real(z),imag(z),'r','linewidth',3);    hold off
axis equal