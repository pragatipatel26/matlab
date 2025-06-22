h=0.5;
n=61;
k1=0.1;
k2=0.1;
x1=zeros(n,1);
x2=zeros(n,1);
x3=zeros(n,1);
t=zeros(n,1);
x1(1)=1;
x2(1)=0;
x3(1)=0;
t(1)=0;
for i=1:n-1
    x1(i+1)=x1(i)+h*(-myodes(t,x1(i)));
    x2(i+1)=x2(i)+h*(myodes(t,x1(i))-myodes(t,x2(i)));
    x3(i+1)=x3(i)+h*myodes(t,x2(i));
    t(i+1)=t(i)+h;
end
f1=figure
plot(t,x1)
hold on
plot(t,x2)
plot(t,x3)
hold off
xlabel('TIME')
ylabel('CONCENTRATION')
hold off
%IMPLICIT
X1=zeros(n,1);
X2=zeros(n,1);
X3=zeros(n,1);
T=zeros(n,1);
X1(1)=1;
X2(1)=0;
X3(1)=0;
T(1)=0;
tol=1e-4;
n=60;
for i=1:n
    x1_new=X1(i);
    x2_new=X2(i);
    x3_new=X3(i);
    R1=x1_new-x1(i)-h*(-k1*x1_new);
    R2=x2_new-x2(i)-h*(k1*X1(i)-k2*x2_new);
    R3=x3_new-x3(i)-h*(k2*X2(i));
    while abs(R1)>tol
        R1=x1_new-x1(i)-h*(-k1*x1_new);
        DR1=1-h*(-k1);
        x1_new=x1_new-R1/DR1;
    end
    X1(i+1)=x1_new;
    while abs(R2)>tol
        R2=x2_new-x2(i)-h*(k1*X1(i)-k2*x2_new);
        DR2=1-h*(-k2);
        x2_new=x2_new-R2/DR2;
    end
    X2(i+1)=x2_new;
    while abs(R3)>tol
        R3=x3_new-x3(i)-h*(k2*X2(i));
        DR3=1;
        x3_new=x3_new-R3/DR3;
    end
    X3(i+1)=x3_new;
    T(i+1)=T(i)+h;
end
f2=figure
plot(T,X1)
hold on
plot(T,X2)
plot(T,X3)
hold off
xlabel('time')
ylabel('concentration')


