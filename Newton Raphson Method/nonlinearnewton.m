function x=nonlinearnewton(x,tolx,tolf)

%k=0;
x_sol=x;
k_max=1000;
for k=1:k_max
    x_old=x_sol;
    x_sol=x_old-getf(x_old)/getdf(x_old);

    if (abs(getf(x_old)))<tolx||(abs(x_old-x_sol)/x_sol)<tolf
        break
    end
end
x=x_sol;
disp(x)
end

