function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)

    N = length(xn) + length(hn) - 1;
    yn = zeros(1, N);

    for i = 1:N
        for k = 1:length(xn)
            if (i - k + 1 >= 1) & (i - k + 1 <= length(hn)) then
                yn(i) = yn(i) + xn(k) * hn(i - k + 1);
            end
        end
    end

    yorigin = xorigin + horigin - 1;
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    xmin = min([nx nh ny]);
    xmax = max([nx nh ny]);
    ymin = min([xn hn yn]);
    ymax = max([xn hn yn]);

    clf;

    subplot(3,1,1);
    plot2d3(nx, xn, style = 1);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    xtitle("x(n)");
    xgrid();

    subplot(3,1,2);
    plot2d3(nh, hn, style = 2);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    xtitle("h(n)");
    xgrid();

    subplot(3,1,3);
    plot2d3(ny, yn, style = 3);
    e = gce(); 
    e.children.thickness = 3;

    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";
    a.data_bounds = [xmin ymin; xmax ymax];

    xtitle("y(n) = x(n) * h(n)");
    xgrid();

endfunction

xn = [0 , 1, 3, -2];
xorigin = 1;
hn = [1, 1 , 2, 3];
horigin = 2;
[yn, yorigin] = convolution(xn, xorigin, hn, horigin);
disp(yn);
disp(yorigin);
