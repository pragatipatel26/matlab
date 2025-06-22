t=[0 20 40 60 120 180 300];
x=log(t);
concentration=[0.133 0.1031 0.0658 0.0410 0.0238 0.0108 0.0065];
y=log(concentration);
plot(x,y);
xlabel('log(t)');
ylabel('-dCa/dt');
