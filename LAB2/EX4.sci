n = -5:5;

// Unit ramp signal
r = n .* bool2s(n >= 0);


plot2d3(n, r);

title("Unit Ramp Signal r(n)");
xlabel("n");
ylabel("r(n)");
