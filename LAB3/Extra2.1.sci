n = -10:10;

N = length(n);
xorigin = find(n == 0);   // vị trí n = 0 trong vector

xn = zeros(1, N);

for i = 1:N
    if (n(i) >= -3) & (n(i) <= -1) then
        xn(i) = 1 + n(i)/3;
    elseif (n(i) >= 0) & (n(i) <= 3) then
        xn(i) = 1;
    else
        xn(i) = 0;
    end
end

//Vẽ
clf;
plot2d3(n, xn, style=1);
e = gce(); 
e.children.thickness = 3;

a = gca();
a.x_location = "origin";
a.y_location = "origin";

ymin = min(xn);
ymax = max(xn);
margin = 0.5;

a.data_bounds = [-10 (ymin - margin); 10 (ymax + margin)];

xtitle("x(n) với n = -10→10, xorigin = " + string(xorigin));
xgrid();
