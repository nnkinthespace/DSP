function[yn, yorigin] = advance(xn, xorigin,k)
    if k < 0 then
        error("Sai điều kiện")
    end
    yn = xn
    yorigin = xorigin + k
    

// Tạo trục n cho x(n)
nx = (1:length(xn)) - xorigin;
//Tạo trục n cho y(n)
ny = (1:length(yn)) - yorigin;
// Xác định trục chung
xmin = min([nx ny]);
xmax = max([nx ny]);
ymin = min([xn yn]);
ymax = max([xn yn]);
// x(n)
subplot(2,1,1)
plot2d3(nx,xn,style=1)
e = gce(); 
e.children.thickness = 3;
xtitle("Tín hiệu gốc x(n)")
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];


subplot(2,1,2)
plot2d3(ny,yn,style=2)
e = gce(); 
e.children.thickness = 3;
xtitle("Tín hiệu y(n)")
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [xmin ymin; xmax ymax];
endfunction




