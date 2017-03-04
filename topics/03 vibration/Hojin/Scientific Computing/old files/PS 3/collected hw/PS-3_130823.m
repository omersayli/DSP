clear all
clc
%% P1-1
clear all
clc

x = -4:0.001:3;

x1=x;
x2=x.^2;
x3=x.^3;

f=4*x3+10*x2-20*x1-10;

plot(x,f)
%% P1-2
clear all
clc

x = -4:0.001:3;

x1=x;
x2=x.^2;
x3=x.^3;

f=4*x3+10*x2-20*x1-10;
i = 0:length(x);
n = x;
if f <= 0;
    n = x;
    while f >= 0
        n = x
    end
    
end
