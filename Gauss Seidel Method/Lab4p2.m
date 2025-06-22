A=[6 1 0 -3;-2 8 2 3;2 1 3 9;1 -6 10 -2];
b=[-9;9;13;17];
x=[0;0;0;0];
tolf=1e-2;
K=zeros(3,1);
Res=zeros(3,1);
res=norm(A*x-b);
k=0;
k_max=3;
while res>tolf
    [x,res]=gaussseidel1iter(A,x,b);
k=k+1;
K(k)=k;
Res(k)=res;
if k>=k_max
    break
end
end
disp(x)
figure2 =plot(K,Res)