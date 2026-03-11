 
n = -2:2;

// x(n)
x = [0 1 3 -2 0];

// Folding
x_flip = [0 -2 3 1 0]; 

// Even component
xe = (x + x_flip)/2;

// Odd component
xo = (x - x_flip)/2;

subplot(3,1,1)
plot2d3(n,x,style=1)
title("Original signal x(n)")
xlabel("n")
ylabel("x(n)")
xgrid

subplot(3,1,2)
plot2d3(n,xe,style=2)
title("Even component xe(n)")
xlabel("n")
ylabel("xe(n)")
xgrid

subplot(3,1,3)
plot2d3(n,xo,style=3)
title("Odd component xo(n)")
xlabel("n")
ylabel("xo(n)")
xgrid
