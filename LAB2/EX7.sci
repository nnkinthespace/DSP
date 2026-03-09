clc;
clear;
clf;

// Origin sinal
n = -2:1;
x = [1 -2 3 6];

// ====== y1(n) = x(-n) ======
y1 = x($:-1:1);
n1 = -1:2;

// ====== y2(n) = x(n+3) ======
y2 = x;
n2 = n - 3;

// ====== y3(n) = 2x(-n-2) ======
y3 = 2*x($:-1:1);
n3 = -3:0;

// a

figure(1)

subplot(2,1,1)
plot2d3(n,x)
plot(n,x,"ro")
a=gca(); 
a.data_bounds=[-3 -5;2 8];
title("Original signal x(n)")
xlabel("n")
ylabel("x(n)")

subplot(2,1,2)
plot2d3(n1,y1)
plot(n1,y1,"ro")
a=gca();
a.data_bounds=[-3 -5;3 8];
title("y1(n) = x(-n)")
xlabel("n")
ylabel("y1(n)")

// b

figure(2)

subplot(2,1,1)
plot2d3(n,x)
plot(n,x,"ro")
a=gca();
a.data_bounds=[-6 -5;2 8];
title("Original signal x(n)")
xlabel("n")
ylabel("x(n)")

subplot(2,1,2)
plot2d3(n2,y2)
plot(n2,y2,"ro")
a=gca();
a.data_bounds=[-6 -5;2 8];
title("y2(n) = x(n+3)")
xlabel("n")
ylabel("y2(n)")

// c

figure(3)

subplot(2,1,1)
plot2d3(n,x)
plot(n,x,"ro")
a=gca();
a.data_bounds=[-4 -5;2 15];
title("Original signal x(n)")
xlabel("n")
ylabel("x(n)")

subplot(2,1,2)
plot2d3(n3,y3)
plot(n3,y3,"ro")
a=gca();
a.data_bounds=[-4 -5;2 15];
title("y3(n) = 2x(-n-2)")
xlabel("n")
ylabel("y3(n)")
