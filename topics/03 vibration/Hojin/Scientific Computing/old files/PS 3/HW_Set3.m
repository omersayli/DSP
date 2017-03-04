x = -4:0.01:3;
y = 4*x.^3 + 10*x.^2 - 20*x -10;

plot(x,y)

sol = [];

for i = 1:length(x)-1       
    if y(i)*y(i+1) <= 0     % might miss multiple roots
        sol = [sol x(i)];
    end
end

disp(sol)

%%
syms x
sol = solve('4*x^3 + 10*x^2 - 20*x -10 = 0');
double(sol)


%%
syms x
solve ('x^2 - 5 * x - 14')

%%

x = -4:0.01:10;
y = x.^2 - 5*x - 14;

plot(x,y)

sol = [];

% for i = 1:length(x)-1
%     if y(i)*y(i+1) <= 0
%         sol = [sol x(i)];
%     end    
% end

for i = 1:length(x)-1
    if y(i)*y(i+1) < 0
        sol = [sol x(i)];
    elseif y(i) == 0
        sol = [sol x(i)];
    end    
end

disp(sol)


p = [1 -5 -14];
x = roots(p)

%%

figure(1);  hold on
axis([-1 1 -4 .5])
for x = -1:0.05:1
    y = -4*x^2;
    plot(x,y,'ks')
    pause(0.1)
end
hold off

%%


figure(2);  % hold on

x = 0:0.01:2*pi;
for i = 1:10
    y = 1/i*sin(x);
%     cla
    plot(x,y)    
    axis([0 2*pi -1 1])
    pause(0.5)
end
% hold off

%%
theta = 0:0.01:2*pi;

x = cos(theta);
y = sin(theta);

plot(x,y)
axis equal

%%
theta = 0:0.01:2*pi;
z = cos(theta)+1i*sin(theta);

figure(3);  
plot(real(z),imag(z))
axis equal

%%
clear all
clc
theta = 0:0.01:2*pi;
z = cos(theta)+1i*sin(theta);

figure(4);  cla;    
for x = 0:0.1:2*pi
    plot(real(z),imag(z));  hold on 
    plot(theta,imag(z))
    plot([1 1],[-1 1])
    axis equal
    w = cos(x)+i*sin(x);
    plot(real(w),imag(w),'o','MarkerFaceColor','g');  
    plot(1,imag(w),'o','MarkerFaceColor','k');    
    plot(x,imag(w),'o','MarkerFaceColor','r');  hold off
    pause(0.1)
end

%%
theta = 0:0.01:2*pi;
z = cos(theta)+1i*sin(theta);

figure(4);  cla;    
for x = 0:0.1:2*pi
    plot(real(z),imag(z));  hold on     
    axis equal
    w = cos(x)+1i*sin(x);
    plot(real(w),imag(w),'og','MarkerFaceColor','g');  
    hold off
    pause(0.1)
end

%%
theta = 0:0.01:2*pi;
z = cos(theta)+1i*sin(theta);

figure(4);  cla; 
plot(real(z),imag(z));  hold on
axis equal
x = 0:0.001:2*pi;
w = cos(x)+1i*sin(x);
comet(real(w),imag(w));
hold off










































