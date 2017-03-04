clear all
n = 1000;
x = -1 + 2*rand(n,2);       % help rand
count = 0;
for j = 1:n
    if norm(x(j,:)) <= 1    % help norm
        count = count + 1;
    end
end

pi_est = (count/n)*4;
disp(pi_est)

% visualize 
w = 0:0.01:2*pi;
z = cos(w) + 1i*sin(w);

figure(1);  cla;    hold on
plot(x(:,1),x(:,2),'.');    
plot(real(z),imag(z),'r','linewidth',3);    hold off
axis equal