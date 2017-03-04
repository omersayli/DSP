x=0:0.01:pi;
f=sin(x).*exp(x)+log10(3*x)+1./sqrt(2*x+7);
plot(x,f)
position=x(1,find(f==max(f)))