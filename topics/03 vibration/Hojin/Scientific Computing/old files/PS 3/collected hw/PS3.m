%% P1
%1)
clear all
clc

x=-4:0.01:3;
f=4*x.^3+10*x.^2-20*x - 10;
plot(x,f)

%%
%2)
clear all
clc

f2=[4 10 -20 -10];
x = roots(f2)   


%% P2
%1)
clear all
clc

x=-4:0.01:10;
f=x.^2-5*x-14;
plot(x,f)

%%
%2)
clear all
clc
syms x;
x=solve('x^2-5*x-14=0');
x=double(x)

%%
%4)
clear all
clc
f3=[1 -5 -14];
roots(f3)

%% P3
%1)
clear all
clc
figure(1); hold on
axis([-1 1 -4 .5])
for x = -1:0.05:1
    y = -4*x^2;
    plot(x,y,'s')
    pause(0.1)
end
hold off

%%
%2)
clear all
clc
figure(2); hold on
axis([0 2*pi -1 1])
x = 0:0.01:2*pi;
for i = 1:10
    y = 1/i*sin(x);
    % cla
    plot(x,y)
    pause(0.5)
end
hold off

%% P4
clear all
clc
y=-1:0.01:1;
x1=sqrt(1-y.^2);
x2=-sqrt(1-y.^2);
plot(y,x1)
hold on
plot(y,x2)
hold off

%%
clear all
clc
[x,y]=scircle1(0,0,1);
plot(x,y)
axis equal
%%
clear all
clc
center=[0 0];                   %중심점
r=70;                          %반지름
N=1000;                         %원의 점 개수
NL = 600;                       %선의 점 개수*2
theta=linspace(0,2*pi,N);       %원(라디안)
x=r*cos(theta)+center(1);       
y=r*sin(theta)+center(2);       
plot(x,y);                      

axis equal;                     %좌표축.
grid on
%%
clear all
clc
 t = [0:0.1:2*pi];

%키보드로부터 입력한다

 r =1;
 x0=0;
 y0=0;

%시간 t=0~2pi 까지 돌리면서 원의 x좌표와 y좌표를 뽑아낸다.=> 반복문 사용: for문

for j=1:length(t),
    x(j)= x0+ r* cos(t(j));
    y(j)=y0 + r*sin(t(j));
end

%그래프를 그린다

plot(x,y)
title('Circle')
xlabel('x(t)')
ylabel('y(t)')

%% P5
clear all
clc
[x,y]=scircle1(0,0,1);
for y1=-1:0.01:1;
    x1=sqrt(1-y1.^2);
    plot(x1,y1,'s',x,y)
    pause(0.01)
end
for y2=-1:0.01:1;
    x2=-sqrt(1-y2.^2);
    plot(x2,-y2,'s',x,y)
    pause(0.01)
end