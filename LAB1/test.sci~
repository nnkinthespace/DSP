clf

// Draw xat in 5 periods //
t=0:0.0001:0.1
xa=3*sin(100*%pi*t)

// Fs = 300 samples/s //
n=0:29
xn=3*sin(%pi/3*n)

// Quantized signal using truncated method //
delta=0.1
xq=delta*floor(xn/delta)

subplot(3,1,1)
plot(t, xa)
title("Analog signal xa(t)")
xlabel("Time (s)")
ylabel("Amplitude")
xgrid()

subplot(3,1,2)
plot2d3(n, xn)
title("Discrete-time signal x(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

subplot(3,1,3)
plot2d3(n, xq)
title("Quantized signal xq(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()
