function flag=checkddominant(A)
n=length(A);
count=0;
for r=1:n
    sum=0;
 for c=1:n
     if c==r
      sum=sum+0;
     else
         sum=sum+A(r,c);
     end 
 end
 if A(r,r)>=sum
    count=count+1;
 end
if count==n
    flag=0;
else 
    flag=1;
end
end
