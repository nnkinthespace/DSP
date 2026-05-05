w = linspace(-%pi, %pi, 1000); 

// a
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
mag_X1 = abs(X1);
phase_X1 = atan(imag(X1), real(X1));

// Vẽ đồ thị x1(n)
scf(0); 
subplot(2,1,1);
plot(w, mag_X1);
xtitle("Amplitude Spectrum of x1(n)", "Frequency w (rad/sample)", "Magnitude");
xgrid(1);

subplot(2,1,2);
plot(w, phase_X1);
xtitle("Phase Spectrum of x1(n)", "Frequency w (rad/sample)", "Phase (radians)");
xgrid(1);

// b.
X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);
mag_X2 = abs(X2);
phase_X2 = atan(imag(X2), real(X2));

// Vẽ đồ thị x2(n)
scf(1);
subplot(2,1,1);
plot(w, mag_X2);
xtitle("Amplitude Spectrum of x2(n)", "Frequency w (rad/sample)", "Magnitude");
xgrid(1);

subplot(2,1,2);
plot(w, phase_X2);
xtitle("Phase Spectrum of x2(n)", "Frequency w (rad/sample)", "Phase (radians)");
xgrid(1);
