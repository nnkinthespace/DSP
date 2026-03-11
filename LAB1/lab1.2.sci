clf

//2.1 //
t= linspace(0,0.1,500)
xa=3*sin(100*%pi*t)
subplot(3,1,1)
plot(t, xa,style = 1)
title("Tín hiệu tương tự xa(t)")
xlabel("Thời gian (s)")
ylabel("Biên độ")
xgrid()

//2.2 & 2.3//
n= linspace(1,30,500)
xn=3*sin(%pi*n/3)
subplot(3,1,2)
plot2d3(n, xn, style = 2)
title("Tín hiệu rời rạc x(n)")
xlabel("n")
ylabel("Biên độ")
xgrid()

// 2.4 //
delta=0.1
xq=delta*floor(xn/delta)
subplot(3,1,3)
plot2d3(n, xq, style = 3)
title("Tín hiệu lượng tử hóa xq(n)")
xlabel("n")
ylabel("Biên độ")
xgrid()





