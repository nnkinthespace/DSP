n = -2:4;
x1 = [0 0 0 1 3 -2 0];
x2 = [0 0 1 2 3 0 0];
y = x1 + x2;

// x1(n)
clf;
subplot(3,1,1);
plot2d3(n,x1);
a = gca();
a.x_location = "origin";
title('x1');
xlabel('n');
ylabel('x1(n)');

// x2(n)
subplot(3,1,2);
plot2d3(n,x2);
a = gca();
a.x_location = "origin";
title('x2');
xlabel('n');
ylabel('x2(n)');

// y(n)
subplot(3,1,3);
plot2d3(n,y);
a = gca();
a.x_location = "origin";
title('y');
xlabel('n');
ylabel('y(n)');
