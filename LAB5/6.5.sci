w = linspace(-%pi, %pi, 1000);

// Tính phổ của ngõ ra
Y = (1 + exp(-%i*w)) ./ (1 - 0.5*exp(-%i*w));

mag_Y = abs(Y);
phase_Y = atan(imag(Y), real(Y));

scf(0); 
clf();
subplot(2,1,1);
plot(w, mag_Y, 'b');
xtitle("Amplitude Spectrum of y(n)", "Frequency w (rad/sample)", "Magnitude |Y(e^jw)|");
xgrid(1);

subplot(2,1,2);
plot(w, phase_Y, 'r');
xtitle("Phase Spectrum of y(n)", "Frequency w (rad/sample)", "Phase (radians)");
xgrid(1);
