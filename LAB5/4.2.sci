W = linspace(-20, 20, 1000);

A = 1;
a = 2;

// a. 
Xa = A ./ (a + %i * W);
mag_Xa = abs(Xa);
phase_Xa = atan(imag(Xa), real(Xa));

scf(0);
clf();

subplot(2,1,1);
plot(W, mag_Xa, 'b');
xtitle("Amplitude Spectrum of Signal (a)", "Frequency \Omega (rad/s)", "Magnitude |Xa(j\Omega)|");
xgrid(1);

subplot(2,1,2);
plot(W, phase_Xa, 'r');
xtitle("Phase Spectrum of Signal (a)", "Frequency \Omega (rad/s)", "Phase (radians)");
xgrid(1);

// b)

Xb = (2 * A * a) ./ (a^2 + W.^2);
mag_Xb = abs(Xb);

phase_Xb = zeros(W); 

scf(1); 
clf();

subplot(2,1,1);
plot(W, mag_Xb, 'b');
xtitle("Amplitude Spectrum of Signal (b)", "Frequency \Omega (rad/s)", "Magnitude |Xb(j\Omega)|");
xgrid(1);

subplot(2,1,2);
plot(W, phase_Xb, 'r');
a=gca(); 
a.data_bounds=[-20,-1; 20,1]; 
xtitle("Phase Spectrum of Signal (b)", "Frequency \Omega (rad/s)", "Phase (radians)");
xgrid(1);
