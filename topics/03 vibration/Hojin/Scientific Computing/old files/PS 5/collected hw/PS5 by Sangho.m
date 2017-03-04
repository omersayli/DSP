%% P1
%1)
clear all
clc
d = 0.1;
x = -100:d:100;

D = 0;
for i = x
    D = D + d*(1/(1+i^2));
end
D

%%
%2)
clear all
clc
a=0;
b=1;
for i=0:100
    a=sqrt((2*a+2))/2;
    b=b*a;
end
c=1/(b/2)

%%
%3)
clear all
clc
b=0;
for i=1:100,
    a=4/(2*i-1)*(-1)^(i+1);
    b=b+a;
end
b

%% P2
%1)
clear all
clc
n = 1000;
x = -1 + 2*rand(n,2); % help rand
count = 0;
for j = 1:n
    if norm(x(j,:)) <= 1 % help norm
    count = count + 1;
    end
end
pi_est = (count/n)*4;
disp(pi_est)
% visualize
w = 0:0.01:2*pi;
z = cos(w) + 1i*sin(w);
figure(1); cla; hold on
plot(x(:,1),x(:,2),'.');
plot(real(z),imag(z),'r','linewidth',3); hold off
axis equal

%%
clear all
clc
n = 5;
x = rand(n,2)
x(2,:)