theta = 0:0.01:2*pi;

x = theta - sin(theta); 
y = 1-cos(theta);

figure(1)
plot(x,y)
axis equal

%%
clear z
theta = 0-pi/2:0.01:2*pi+pi/2;
z = theta + 1i - sin(theta) - 1i*cos(theta);
figure(2)
plot(real(z),imag(z))
axis equal

%%
clear z
theta = 0:0.01:2*pi;
z = theta + 1i + exp(1i*(3*pi/2-theta));
figure(3);  
plot(real(z),imag(z))
axis equal

figure(4)
t = 0:0.01:2*pi;
c = 1i + exp(1i*t);

for theta = 0:0.1:2*pi
    w = theta + 1i + exp(1i*(3*pi/2-theta));
    plot(theta + real(c),imag(c));  hold on
    axis([-1 2*pi+1 -1 3])
    axis equal    
    plot([-1 2*pi+1],[0 0],'k')
    plot(real(z),imag(z),'--')
    plot(real(w),imag(w),'o','MarkerFaceColor','g');  hold off
    pause(0.05)
%     pause
end



%%
theta = 0:0.01:2*pi;

c = exp(1i*theta);
r = 0.2;
beta = 2*pi + theta*(1-1/r);
z = (1-r)*exp(1i*theta) + r*exp(1i*beta);

figure(5)
% plot(real(c),imag(c));  hold on
plot(real(z),imag(z));  hold off
axis equal


%%

k = 4*pi;

theta = 0:0.01:k;

r = 0.4;
beta = 2*pi + theta*(1-1/r);
c = exp(1i*theta);
z = (1-r)*exp(1i*theta) + r*exp(1i*beta);

figure(6)

for x = 0:0.05:k
    c2 = (1-r)*exp(1i*x) + r*exp(1i*theta);
    w = (1-r)*exp(1i*x) + r*exp(1i*(2*pi + x*(1-1/r)));

    plot(real(c),imag(c),'k');  hold on
    plot(real(c2),imag(c2),'r','linewidth',2);  
    plot(real(z),imag(z));  
    plot(real(w),imag(w),'o','MarkerFaceColor','g')    
    hold off
    axis equal
    pause(0.005)
end


































