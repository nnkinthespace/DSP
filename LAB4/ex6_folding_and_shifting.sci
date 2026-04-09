function [yn, yorigin] = convolutionn(xn, xorigin, hn, horigin)

    N = length(xn) + length(hn) - 1;
    yn = zeros(1,N);

    // ===== TÍNH CONV =====
    for n = 1:N
        for k = 1:length(xn)
            if (n - k + 1 >= 1) && (n - k + 1 <= length(hn))
                yn(n) = yn(n) + xn(k) * hn(n - k + 1);
            end
        end
    end

    // ===== ORIGIN =====
    first = (0 - horigin + 1) + (0 - xorigin);
    yorigin = 0 - first;

    // ===== TRỤC =====
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;

    // ===== AUTO SCALE =====
    xmin = min([nx nh ny]);
    xmax = max([nx nh ny]);
    ymin = min([xn hn yn]);
    ymax = max([xn hn yn]);

    clf

    // ===== x(n) =====
    subplot(3,1,1);
    plot2d3(nx, xn, style=1);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("x(n)");

    // ===== h(n) =====
    subplot(3,1,2);
    plot2d3(nh, hn, style=2);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("h(n)");

    // ===== y(n) =====
    subplot(3,1,3);
    plot2d3(ny, yn, style=3);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("y(n)");

endfunction


// ===== TEST =====
xn = [1, 2, -3, 2, 1];
xorigin = 2;

hn = [1, 0, -1];
horigin = 2;

[yn, yorigin] = convolutionn(xn, xorigin, hn, horigin);

disp("yn = ")
disp(yn)

disp("yorigin = ")
disp(yorigin)
