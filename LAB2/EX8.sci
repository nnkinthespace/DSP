n = -2:1;
x = [1, -2, 3, 6];

n_y1 = -n($:-1:1);
y1 = x($:-1:1);
n_y2 = n - 3;
y2 = x;
n_y3 = -n($:-1:1) - 2;
y3 = 2 * x($:-1:1);

//  y1(n)
scf(1);
clf();
subplot(2, 1, 1);
plot2d3(n, x, style=1);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-3, -3; 2, 7];
title("Tín hiệu gốc x(n)");
xlabel("n");
ylabel("Biên độ");
xgrid;

subplot(2, 1, 2);
plot2d3(n_y1, y1, style=2);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-2, -3; 3, 7];
title("y1(n) = x(-n)");
xlabel("n");
ylabel("Biên độ");
xgrid;

//  y2(n)
scf(2);
clf();
subplot(2, 1, 1);
plot2d3(n, x, style=1);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-3, -3; 2, 7];
title("Tín hiệu gốc x(n)");
xlabel("n");
ylabel("Biên độ");
xgrid;

subplot(2, 1, 2);
plot2d3(n_y2, y2, style=2);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-6, -3; -1, 7];
title("y2(n) = x(n+3)");
xlabel("n");
ylabel("Biên độ");
xgrid;

// y3(n)
scf(3);
clf();
subplot(2, 1, 1);
plot2d3(n, x, style=1);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-3, -3; 2, 7];
title("Tín hiệu gốc x(n)");
xlabel("n");
ylabel("Biên độ");
xgrid;

subplot(2, 1, 2);
plot2d3(n_y3, y3, style=2);
e = gce(); 
e.children.thickness = 3;
ax = gca();
ax.x_location = "origin";
ax.data_bounds = [-4, -5; 1, 13];
title("y3(n) = 2x(-n-2)");
xlabel("n");
ylabel("Biên độ");
xgrid;
