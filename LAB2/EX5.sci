 
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
plot2d3(n,x)
title("Original signal x(n)")
xlabel("n")
ylabel("x(n)")

subplot(3,1,2)
plot2d3(n,xe)
title("Even component xe(n)")
xlabel("n")
ylabel("xe(n)")

subplot(3,1,3)
plot2d3(n,xo)
title("Odd component xo(n)")
xlabel("n")
ylabel("xo(n)")
