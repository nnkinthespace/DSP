x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

N = length(x);
nx = 0 : (N - 1);
y_fold = zeros(1, N);

for n = 0 : (N - 1)
    sum_val = 0;
    for k = 0 : (N - 1)
        idx_x = modulo(n - k + N, N) + 1; 
        idx_h = k + 1;
        sum_val = sum_val + h(idx_h) * x(idx_x);
    end
    y_fold(n + 1) = sum_val;
end

// Vẽ đồ thị x(n) và y(n)
xmin = min(nx);
xmax = max(nx);
ymin = min([x y_fold]);
ymax = max([x y_fold]);

clf
subplot(2, 1, 1);
plot2d3(nx, x, style=1);
e = gce(); 
e.children.thickness = 3;

a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

xtitle("Tín hiệu x(n)", "n", "Biên độ");

subplot(2, 1, 2);
plot2d3(nx, y_fold, style=2);
e = gce(); 
e.children.thickness = 3;
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

xtitle("Tín hiệu y(n)", "n", "Biên độ");
