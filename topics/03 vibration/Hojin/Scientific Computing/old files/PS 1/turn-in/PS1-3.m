t=[0:0.01:3];
f=3/2*sin(t).^2+3*cos(t).^2+1;
plot(t,f)


location=t(1,find(f==min(f)))