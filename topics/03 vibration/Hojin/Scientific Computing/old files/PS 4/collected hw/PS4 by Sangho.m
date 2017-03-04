%% P1
%1)
clear all
clc
t=-10:0.01:10;
r=1;
x=r*(t-sin(t));
y=r*(1-cos(t));
plot(x,y)
axis equal
%%
%2)
clear all 
clc
t=0:0.05:2*pi;
ts=0:0.05:6;
tt=-5:0.05:10;
r=1;
x=r*(t-sin(t));
y=r*(1-cos(t));

for k=ts; 
    xc = r*(cos(t)+k);
    yc = r*(sin(t)+1);
    xt=r*(k-sin(k));
    yt=r*(1-cos(k));
    plot(xt,yt,'*',tt,0,x,y,xc,yc)
    axis ([-1 7 -2 4])
    pause(0.005)
end
%% P2
%1)
clear all
clc
a=0:0.01:2*pi;
R=1;
r=0.2;
d=r;
x=(R-r)*cos(a)+d*cos((R-r)/r*a);
y=(R-r)*sin(a)-d*sin((R-r)/r*a);
plot(x,y);
axis equal

%%
%2)
clear all
clc
a=0:0.01:2*pi;
R=1;
r=0.2;
d=r;
x=(R-r)*cos(a)+d*cos((R-r)/r*a);
y=(R-r)*sin(a)-d*sin((R-r)/r*a);
xc=R*sin(a);
yc=R*cos(a);
for i=a,
    xd=(R-r)*cos(i)+d*cos((R-r)/r*i);
    yd=(R-r)*sin(i)-d*sin((R-r)/r*i);
    xcc=r*sin(a)+(R-r)*cos(i);
    ycc=r*cos(a)+(R-r)*sin(i);
    plot(xd,yd,'*',xcc,ycc,x,y,xc,yc);
    axis equal
    pause(0.01)
end
