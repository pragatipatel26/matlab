function x=gausselimination(A,b)
n=length(b);
x=zeros(n,1);
for k =1:n-1
    %partial pivoting
    Amax=A(k,k);
    swap_row=k;
    for i=k+1:n
      if abs(A(i,k))>abs(Amax)
          Amax=A(i,k);
          swap_row=i;
      end
        if swap_row~=k
            old_pivot(1,:)=A(k,:);
            old_b=b(k);
            A(k,:)=A(swap_row,:);
            A(swap_row,:)=old_pivot;
            b(k)=b(swap_row);
            b(swap_row)=old_b;
        end
    end
           
    %forward elimination
    for i=k+1:n
        m=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-m*A(k,j);
        end
        b(i)=b(i)-m*b(k);
    end
end
%backward substitution
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    s=b(i);
    for j=i+1:n
        s=s-A(i,j)*x(j);
    end
    x(i)=s/A(i,i);
end
end