w = linspace(-%pi, %pi, 1000);

// Tính hàm truyền H(e^jw
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-%i*2*w));

// Trích xuất phổ biên độ và phổ pha
mag_H = abs(H);
phase_H = atan(imag(H), real(H));

//vẽ đồ thị
scf(2);
clf();

subplot(2,1,1);
plot(w, mag_H, 'b');
xtitle("Amplitude Spectrum of h(n)", "Frequency w (rad/sample)", "Magnitude |H(e^jw)|");
xgrid(1);

subplot(2,1,2);
plot(w, phase_H, 'r');
xtitle("Phase Spectrum of h(n)", "Frequency w (rad/sample)", "Phase (radians)");
xgrid(1);
