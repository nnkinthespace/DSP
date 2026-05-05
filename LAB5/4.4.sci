
N = 6;
x = [3, 2, 1, 0, 1, 2];

n_plot = -6:11;
x_plot = [x, x, x]; 

scf(0); clf();
plot2d3(n_plot, x_plot); 
plot(n_plot, x_plot, 'r.'); 
xtitle("Periodic Signal x(n)", "Time index n", "Amplitude");
xgrid(1);

k_cont = linspace(0, N-1, 1000); 
Ck_cont = zeros(k_cont);

n_sym = [-2, -1, 0, 1, 2, 3];
x_sym = [1,   2, 3, 2, 1, 0];

for i = 1:length(n_sym)
    Ck_cont = Ck_cont + x_sym(i) * exp(-%i * (2*%pi/N) * k_cont * n_sym(i));
end
Ck_cont = Ck_cont / N;

mag_Ck = abs(Ck_cont);

Ck_clean = Ck_cont;
Ck_clean(abs(imag(Ck_clean)) < 1e-10) = real(Ck_clean(abs(imag(Ck_clean)) < 1e-10)); 
phase_Ck = atan(imag(Ck_clean), real(Ck_clean));

scf(1); clf();


subplot(2,1,1);
plot(k_cont, mag_Ck, 'b'); 
xtitle("Magnitude Spectrum |c_k|", "Frequency index k", "Magnitude");
xgrid(1);

subplot(2,1,2);
plot(k_cont, phase_Ck, 'r');
a=gca();
a.data_bounds=[0,-1; N-1,1]; 
xtitle("Phase Spectrum \angle c_k", "Frequency index k", "Phase (radians)");
xgrid(1);
