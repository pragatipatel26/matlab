function myplot(a,b,n)
x=linspace(a,b,n);
y=sin(2*x)+x.^3;
plot(x,y);
end