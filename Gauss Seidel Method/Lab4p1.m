A=[6 1 0 -3;-2 8 2 3;1 -6 10 -2;2 1 3 9];
b=[-9;9;17;13];
x=[0;0;0;0];
tolf=1e-2;
k=0;
K=zeros();
Res=zeros();
res=norm(A*x-b);
while res>tolf
    [x,res]=gaussseidel1iter(A,b,x);
    k=k+1;
    K(k)=k;
    Res(k)=res;
    
end
fig1=plot(K,Res)
disp(x)