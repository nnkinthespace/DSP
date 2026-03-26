function val = get_x(k)
    if (k >= -1 & k <= 2) then
        val = 1;
    elseif (k == 3 | k == 4) then
        val = 0.5;
    else
        val = 0;
    end
endfunction

n = -8:8;
L = length(n);

xa = zeros(1, L);
xb = zeros(1, L);
xc = zeros(1, L);
xd = zeros(1, L);
xe = zeros(1, L);
xf = zeros(1, L);
xg = zeros(1, L);
xh = zeros(1, L);

// tính toán giá trị cho từng tín hiệu tại mỗi thời điểm n
for i = 1:L
    k = n(i);
    
    // a) x(n-2)
    xa(i) = get_x(k - 2);
    
    // b) x(4-n)
    xb(i) = get_x(4 - k);
    
    // c) x(n+2)
    xc(i) = get_x(k + 2);
    
    // d) x(n)u(2-n)
    if (k <= 2) then u_val = 1; else u_val = 0; end
    xd(i) = get_x(k) * u_val;
    
    // e) x(n-1)delta(n-3)
    if (k == 3) then d_val = 1; else d_val = 0; end
    xe(i) = get_x(k - 1) * d_val;
    
    // f) x(n^2)
    xf(i) = get_x(k^2);
    
    // g) thành phần chẵn: 0.5 * [x(n) + x(-n)]
    xg(i) = 0.5 * (get_x(k) + get_x(-k));
    
    // h) thành phần lẻ: 0.5 * [x(n) - x(-n)]
    xh(i) = 0.5 * (get_x(k) - get_x(-k));
end

// thiết lập giới hạn cho các trục tọa độ chung
xmin = -8; xmax = 8;
ymin = -1; ymax = 1.5;

// vẽ đồ thị a) trên cửa sổ 1
scf(1); clf();
plot2d3(n, xa, style=2);
e = gce(); e.children.thickness = 3;
xtitle('a) x(n-2)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị b) trên cửa sổ 2
scf(2); clf();
plot2d3(n, xb, style=2);
e = gce(); e.children.thickness = 3;
xtitle('b) x(4-n)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị c) trên cửa sổ 3
scf(3); clf();
plot2d3(n, xc, style=2);
e = gce(); e.children.thickness = 3;
xtitle('c) x(n+2)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị d) trên cửa sổ 4
scf(4); clf();
plot2d3(n, xd, style=2);
e = gce(); e.children.thickness = 3;
xtitle('d) x(n)u(2-n)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị e) trên cửa sổ 5
scf(5); clf();
plot2d3(n, xe, style=2);
e = gce(); e.children.thickness = 3;
xtitle('e) x(n-1)δ(n-3)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị f) trên cửa sổ 6
scf(6); clf();
plot2d3(n, xf, style=2);
e = gce(); e.children.thickness = 3;
xtitle('f) x(n^2)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị g) trên cửa sổ 7
scf(7); clf();
plot2d3(n, xg, style=2);
e = gce(); e.children.thickness = 3;
xtitle('g) even part of x(n)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];

// vẽ đồ thị h) trên cửa sổ 8
scf(8); clf();
plot2d3(n, xh, style=2);
e = gce(); e.children.thickness = 3;
xtitle('h) odd part of x(n)');
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];
