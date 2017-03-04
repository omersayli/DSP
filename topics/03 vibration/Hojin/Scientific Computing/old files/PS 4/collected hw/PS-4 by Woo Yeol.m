%% P1-1)

clear all
clc

t = -pi:pi/100:3*pi;
r=1;
x = r*(t-sin(t));
y = r*(1-cos(t));

plot(x,y)
axis([-pi 3*pi -2 4]);
%% P1-2)
clear all
clc

t = -pi:pi/100:3*pi;
r=1;
x0 = r*(t-sin(t));
y0 = r*(1-cos(t));

for t1 = t;
    plot(x0,y0)
    hold on
    x1 = t1+r*cos(t);
    y1 = 1+r*sin(t);
    x2 = r*(t1-sin(t1));
    y2 = r*(1-cos(t1));
    plot(x1,y1)
    plot(x2,y2,'ro')
    axis equal
    axis([-pi 3*pi -2 4]);
    hold off
    pause(1/600)
end
%% P2-1)
clear all
clc

t = 0:pi/100:2*pi;
R = 1;
x0 = R*cos(t);
y0 = R*sin(t);
plot(x0,y0)
axis equal
axis([-R-1 R+1 -R-1 R+1]);
hold on

r=0.2*R;
d=r;
x = (R-r)*cos(t)+d*cos(((R-r)/r)*t);
y = (R-r)*sin(t)-d*sin(((R-r)/r)*t);
plot(x,y)
%% P2-2)
clear all
clc

t = 0:0.01*pi:2*pi;
R = 10;
axis([-R-1 R+1 -R-1 R+1]);
x0 = R*cos(t);
y0 = R*sin(t);

r = 0.2*R;
d = r;
x1 = (R-r)*cos(t)+d*cos(((R-r)/r)*t);
y1 = (R-r)*sin(t)-d*sin(((R-r)/r)*t);

for t1 = t;
    plot(x0,y0);
    grid on
    hold on
    axis equal
    plot(x1,y1);
    hold on
    x2 = (R-r)*cos(t1)+d*cos(((R-r)/r)*t1);
    y2 = (R-r)*sin(t1)-d*sin(((R-r)/r)*t1);
    x3 = r*cos(t)+(R-r)*cos(t1);
    y3 = r*sin(t)+(R-r)*sin(t1);
    plot(x2,y2,'ro')
    plot(x3,y3)
    axis equal;
    axis([-R-1 R+1 -R-1 R+1]);
    hold off;
    pause(1/600)
end


