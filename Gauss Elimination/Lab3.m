%VECTOR OF UNKNOWNS
%x=[xo;xm;xp,yo,ym;yp;zm;zp]
T=140;
[psato,psatm,psatp]=getpsatxylene(T);
L=0.2;
F=1;
G=0.8;
zo=0.2;
P=760;
A=[1 1 1 0 0 0 0 0;0 0 0 1 1 1 0 0;L 0 0 G 0 0 0 0;psato 0 0 -P 0 0 0 0;0 psatm 0 0 -P 0 0 0;0 0 psatp 0 0 -P 0 0;0 L 0 0 G 0 -1 0;0 0 L 0 0 G 0 -1];
b=[1;1;0.2;0;0;0;0;0];
x=gausselimination(A,b);
disp(x)
