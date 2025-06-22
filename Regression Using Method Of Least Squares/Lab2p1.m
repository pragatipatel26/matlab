x=[0.5 1 2 3 4 5];
y=[5 -1.5 1 9 8 -18];
n=length(x);
sx0=0;
sx1=0;
sx2=0;
sx3=0;
sx4=0;
sx5=0;
sx6=0;
for i=1:n
    sx0=sx0+1;
    sx1=sx1+x(i);
    sx2=sx2+x(i)*x(i);
    sx3=sx3+x(i)*x(i)*x(i);
    sx4=sx4+x(i)*x(i)*x(i)*x(i);
    sx5=sx5+x(i)*x(i)*x(i)*x(i)*x(i);
    sx6=sx6+x(i)*x(i)*x(i)*x(i)*x(i)*x(i);
end

sx0y1=0;
sx1y1=0;
sx2y1=0;
sx3y1=0;
for i=1:n
    sx0y1=sx0y1+y(i);
    sx1y1=sx1y1+x(i)*y(i);
    sx2y1=sx2y1+x(i)*x(i)*y(i);
    sx3y1=sx3y1+x(i)*x(i)*x(i)*y(i);
end
b=[sx3y1 sx2y1 sx1y1 sx0y1]
A=[sx6 sx5 sx4 sx3;sx5 sx4 sx3 sx2;sx4 sx3 sx2 sx1;sx3 sx2 sx1 sx0]

    
