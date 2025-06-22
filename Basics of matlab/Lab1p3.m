A = [5 1 2 -1;1 6 -1 2;2 3 5 1;1 2 3 10];
dflag=checkddominant(A);
if(dflag==0)
    disp("diagonally dominant")
end