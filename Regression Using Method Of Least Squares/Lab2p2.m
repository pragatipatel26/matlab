%vector of unknowns:x=[a b c] where a=c1,b=-2c1Tm,c=c0+c1(Tm)^2
T=[323 373 473 773 1273];
P=[0.7228 0.7111 0.6974 0.6986 0.7260];
n=length(T);
t0=0;
t1=0;
t2=0;
t3=0;
t4=0;
p1t0=0;
p1t1=0;
p1t2=0;
for i=1:n
    t0=t0+1;
    t1=t1+T(i);
    t2=t2+T(i)*T(i);
    t3=t3+T(i)*T(i)*T(i);
    t4=t4+T(i)*T(i)*T(i)*T(i);
end
%coefficient matrix
A=[t4 t3 t2;t3 t2 t1;t2 t1 t0]
for i=1:n
    p1t0=p1t0+P(i);
    p1t1=p1t1+P(i)*T(i);
    p1t2=p1t2+P(i)*T(i)*T(i);
end
%constants
B=[p1t2 p1t1 p1t0]


