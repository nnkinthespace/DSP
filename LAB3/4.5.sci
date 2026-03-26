
function [yn, yo] = multi(x1n, x1o, x2n, x2o)
    n1 = length(x1n);
    n2 = length(x2n);
    if (n1 > n2) then
        x2n = [x2n, zeros(1, n1 - n2)];
    end
    if (n1 < n2) then
        x1n = [x1n, zeros(1, n2 - n1)];
    end
    if x1o > x2o then
        x2n = [zeros(1, x1o - x2o), x2n];
        x1n = [x1n, zeros(1, x1o - x2o)];
        x2o = x1o;
    end
    if x1o < x2o then
        x1n = [zeros(1, x2o - x1o), x1n];
        x2n = [x2n, zeros(1, x2o - x1o)];
        x1o = x2o;
    end
    yn = x1n .* x2n;
    yo = x1o;
    n = -x1o+1 : 1 : length(x1n) - x1o;

    // Trục chung
    xmin = min(n);
    xmax = max(n);
    ymin = min([x1n x2n yn]);
    ymax = max([x1n x2n yn]);
    
    clf
    // x1
    subplot(3,1,1);
    plot2d3(n, x1n, style=1);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];
    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));
    xtitle("x1(n)");
    
    
    //x2
    subplot(3,1,2);
    plot2d3(n, x2n, style=2);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    a.x_ticks = tlist(["ticks","locations","labels"], ...
                      xmin:0.5:xmax, string(xmin:0.5:xmax));

    xtitle("x2(n)");
    
    
    //x3
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

x1n = [0 1 3 -2];
x1origin = 1;

x2n = [1 1 2 3];
x2origin = 2;

[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);

disp("yn = ")
disp(yn)

disp("yorigin = ")
disp(yorigin)
