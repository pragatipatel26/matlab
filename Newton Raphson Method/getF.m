function F=getF(x)
%constants
ca0=0.1;
cb0=0.5;
cc0=0;
cd0=0;
k1=1;
k2=5;
k3=10;
q=1;
v=10;
F=zeros(4,1);
F(1)=q*(ca0-x(1))+(-k1*x(1)*x(2))*v;
F(2)=q*(cb0-x(2))+(-k1*x(1)*x(2)-k2*x(2)*x(3)+k3*x(4))*v;
F(3)=q*(cc0-x(3))+(k1*x(1)*x(2)-k2*x(2)*x(3)+k3*x(4))*v;
F(4)=q*(cd0-x(4))+(k2*x(2)*x(3)-k3*x(4))*v;