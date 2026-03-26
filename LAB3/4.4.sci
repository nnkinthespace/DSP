
function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)

    L1 = length(x1n);
    L2 = length(x2n);

    n1 = (1:L1) - x1origin;
    n2 = (1:L2) - x2origin;

    n_start = min(n1(1), n2(1));
    n_end   = max(n1($), n2($));

    n = n_start:n_end;

    x1 = zeros(1,length(n));
    x2 = zeros(1,length(n));

    x1((n1(1)-n_start+1):(n1($)-n_start+1)) = x1n;
    x2((n2(1)-n_start+1):(n2($)-n_start+1)) = x2n;

    yn = x1 + x2;

    yorigin = 1 - n_start;

// Trục chung 
    xmin = min(n);
    xmax = max(n);
    ymin = min([x1 x2 yn]);
    ymax = max([x1 x2 yn]);
    clf

    // x1
    subplot(3,1,1);
    plot2d3(n, x1, style=1);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];
    a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("x1(n)");

    // x2
    subplot(3,1,2);
    plot2d3(n, x2, style=2);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];
    a.x_ticks = tlist(["ticks","locations","labels"], ...
                  xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("x2(n)");

    // y(n)
    subplot(3,1,3);
    plot2d3(n, yn, style=3);
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


// test
x1n = [0 1 3 -2];
x1origin = 1;

x2n = [1 1 2 3];
x2origin = 2;

[yn, yorigin] = add(x1n, x1origin, x2n, x2origin);

disp("yn = ")
disp(yn)

disp("yorigin = ")
disp(yorigin)
