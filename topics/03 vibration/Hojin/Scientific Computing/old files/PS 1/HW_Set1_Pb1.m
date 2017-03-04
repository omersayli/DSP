clear all
clc

X = 1:10;
n = length(X);
Y = [];

for i = 1:n
    if mod(X(i),2) == 0 % if X(i) is an even number
       Y = [Y X(i)]; 
    end
end

display(X)
display(Y)

%%
clear all
clc

% first method
n = 10;
m = zeros(1,n);
for i = 1:n
    m(i) = 1/i;    
end
S = sum(m(1:end-1))

% second method
n = 10;
temp_sum = 0;
for i = 1:n
    temp_sum = temp_sum + 1/i;
end

S = temp_sum

%%

t = 0:0.01:3;
X1 = sin(t);
X2 = cos(t);

a1 = 1.5;
a2 = 3;
a3 = 1;

c = a1*(X1.^2) + a2*(X2.^2) + a3;


plot(t,c)

[Y, I] = min(c);
t(I)


%%

x = linspace(0,pi,100);
y = sin(x).*exp(x)+log10(3*x)+1./sqrt(2*x+7);

plot(x,y)

%%
M = [1 4 -3; 4 2 0; -3 0 3];
M'*M
inv(M'*M)

inv(M'*M)*M^2





