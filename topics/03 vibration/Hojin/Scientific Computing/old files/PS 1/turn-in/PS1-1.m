A=1:20;
a=max(A)
b=min(A)
if mod(b,2)==0,
    B=[b:2:a]
else
    B=[b+1:2:a]
end

%%
A=1:20;
j=1;
for i = 1:length(A)
    if mod(A(i),2) == 0,
        B(j) = A(i);
        j = j+1;
    end
end
B

%%
A = [2,3,2,5,30,50,64];
B = [];
for i = 1:length(A)
    if mod(A(i),2) == 0,
        B = [B A(i)];       
    end
end
B