function [x,res]=gaussseidel1iter(A,b,x)
n=length(b);
x_old=x;
i=1;
sum=0;
for j=2:n
sum=sum+A(i,j)*x_old(j);
end
x(1)=(b(1)-sum)/A(1,1);
for i=2:n-1
    sum=0;
    for j=1:i-1
        sum=sum+A(i,j)*x(j);
    end
    for j=i+1:n
        sum=sum+A(i,j)*x_old(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
i=n;
sum=0;
for j=1:n-1
    sum=sum+A(i,j)*x(j);
end
x(n)=(b(n)-sum)/A(n,n);
res=norm(A*x-b);
end
