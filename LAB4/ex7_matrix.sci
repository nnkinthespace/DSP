x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

N = length(x);
nx = 0 : (N - 1);

X_matrix = zeros(N, N);

for i = 0 : (N - 1)
    for j = 0 : (N - 1)
        idx_x = modulo(i - j + N, N) + 1;
        X_matrix(i + 1, j + 1) = x(idx_x);
    end
end

y_matrix = X_matrix * h';
y_mat_flat = y_matrix';

Ex = cumsum(x.^2);
Ey = cumsum(y_mat_flat.^2);

//Vẽ x(n), y(n) và energy
ymin_x = min(x);
ymax_x = max(x);

ymin_y = min(y_mat_flat);
ymax_y = max(y_mat_flat);

scf();
clf();

subplot(3, 1, 1);
plot2d3(nx, x, style=1);
e = gce(); 
e.children.thickness = 3;

plot(nx, x, 'r.');

a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin_x; xmax ymax_x];


a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

xtitle("Tín hiệu x(n)", "n", "Biên độ");



subplot(3, 1, 2);
plot2d3(nx, y_mat_flat, style=2);
e = gce(); 
e.children.thickness = 3;

plot(nx, y_mat_flat, 'b.');

a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin_y; xmax ymax_y];

a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

xtitle("Tín hiệu y(n)", "n", "Biên độ");



subplot(3, 1, 3);
plot2d3(nx, Ex, style=3);
plot2d3(nx, Ey, style=5);

e = gce(); 
e.children.thickness = 3;

a = gca();
a.x_location = "origin";
a.y_location = "origin";


xmin_e = min(nx);
xmax_e = max(nx);
ymin_e = 0;
ymax_e = max([Ex Ey]);
a.data_bounds = [xmin ymin_e; xmax ymax_e];
a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin_e:0.5:xmax_e, string(xmin_e:0.5:xmax_e));

xtitle("Năng lượng tích lũy", "n", "Energy");
legend(["Ex(n)", "Ey(n)"], "in_upper_left");
