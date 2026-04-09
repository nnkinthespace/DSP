function y = convolution(x, h)

    // ===== CONVOLUTION =====
    m = h * x; // outer product
    y = zeros(1, length(x) + length(h) - 1);

    for i = 1:length(x)
        j = i;
        k = 1;
        while (j > 0 & k <= length(h))
            y(i) = y(i) + m(k,j);
            j = j - 1;
            k = k + 1;
        end
    end

    // ===== ENERGY =====
    e_x = 0;
    e_y = 0;

    for i = 1:length(x)
        e_x = e_x + x(i)^2;
    end

    for i = 1:length(y)
        e_y = e_y + y(i)^2;
    end

    e = [e_x, e_y];
    axis_bar = [1,2];

    // ===== TRỤC DSP =====
    nx = 0:length(x)-1;
    ny = 0:length(y)-1;

    xmin = min([nx ny]);
    xmax = max([nx ny]);
    ymin = min([x y]);
    ymax = max([x y]);

    clf

    // ===== x =====
    subplot(3,1,1);
    plot2d3(nx, x, style=1);
    eplot = gce(); 
    eplot.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("x(n)");

    // ===== y =====
    subplot(3,1,2);
    plot2d3(ny, y, style=2);
    eplot = gce(); 
    eplot.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("y(n)");

    // ===== ENERGY =====
    subplot(3,1,3);
    bar(axis_bar, e);

    a = gca();
    a.data_bounds = [0 min(e); 3 max(e)];

    xtitle("Energy of x and y");

endfunction


// ===== TEST =====
x = [1, 2, -3, 2, 1];
h = [1; 0; -1];

y = convolution(x, h);

disp("y = ")
disp(y)
