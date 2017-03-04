%% P1-1)-1
clear all
clc 
n=1218;

dx = 0.01;
x = -n:dx:n;
y = 1./(1+x.^2);
a = 0;
for i = 1:length(x);
    a = a + y(i)*dx;
end

pi = a

%% P1-1)-2
% clear all
% clc 
% n=1218;
% 
% a = 0;
% for i = n;
%     x = 0:n;
%     a = a + (1/(1+x^2))*dx;
% end
% 
% pi = a

%% P1-2)
clear all
clc
n=5;

y1=0;
y2=1;
for i =1:n;
    y1 = sqrt(2+2*y1)*(1/2);
    y2 = y2*y1;
end

pi = 2/y2

%% P1-3)-1
clear all
clc

n = 320;

x = 1:n;
y1 = 4./(4*(x-1)+1);
y2 = 4./(1-4*x);
y3 = y1+y2;

pi = sum(y3)

%% P1-3)-2
clear all
clc

n = 320;

y1 = 0;
y2 = 0;
for i=1:n;
    y1 = y1+4/(4*(i-1)+1);
    y2 = y2+4/(1-4*i);
end

pi = y1+y2
%% P2
clear all
clc

n = 1000;
x = -1 + 2*rand(n,2); % -1 ~ 1 사이의 임의의 실수 1000x2 행렬
count = 0
for j = 1:n
    if norm(x(j,:)) <= 1
        count = count + 1;
    end
end

pi_est = (count/n)*4;
disp(pi_est)

%visualize
w = 0:0.01;2*pi;
z = cos(w) + 1i*sin(w);

figure(1);
hold on
plot(x(:,1),x(:,2),'.');
plot(real(z),imag(z),'r','linewidth',3);
hold off
axis equal
