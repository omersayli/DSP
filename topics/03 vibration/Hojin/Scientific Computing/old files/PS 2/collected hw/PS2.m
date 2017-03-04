%% P1
%1)
clear all
clc

n=5;
temp_sum = 0;
for i = 0:n
    temp_sum = temp_sum + 1/(2^i);
end
Sn=temp_sum
%%
%2)
clear all
clc

temp_sum = 0;
i=0;
while temp_sum <= 1.999,
    temp_sum = temp_sum + 1/(2^i);
    i=i+1;
end

Sn=temp_sum-1/(2^(i-1))
n=i-2
%%
%3)
clear all
clc


Sn=[];
x=0:10;
for j = x
    a = 0;
    n=j;
    for i = 0:n
        a = a + 1/(2^i);
    end
    Sn = [Sn,a];
end
plot (x,Sn)

%% P2
clear all
clc 

dx=0.01;
a=0:dx:pi;
x=0;
A=0;
for i=1:length(a)
    An=dx*sin(x);
    A=A+An;
    x=x+dx;
end
A

%%
Q = integral(@(x)sin(x),0,pi)


%% P3

clear all
clc 

dx=0.001;
x=0;

A=(sin(x+dx)-sin(x))/dx