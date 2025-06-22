function x=nonlinearnewtonraphson(x,tol)
F=getF(x);
k=0;
k_max=1000;
while norm(F)>tol
    J=getJ(x);
    del=-J\F;
    x=x+del;
    F=getF(x);
    k=k+1;
    if k>k_max
        break
    end
end
disp(x)
end