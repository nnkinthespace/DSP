N = 8;
w0 = %pi / 4;

k_cont = linspace(0, N-1, 1000); 
Ck_cont = zeros(k_cont);

n_sym = [-3, -2, -1, 0, 1, 2, 3, 4];
x_sym = 2 + 2*cos(w0 * n_sym) + cos(2*w0 * n_sym) + 0.5*cos(3*w0 * n_sym);


for i = 1:length(n_sym)
    Ck_cont = Ck_cont + x_sym(i) * exp(-%i * (2*%pi/N) * k_cont * n_sym(i));
end
Ck_cont = Ck_cont / N;


mag_Ck = abs(Ck_cont);
Pk_cont = mag_Ck.^2;

scf(1); clf();


subplot(2,1,1);
plot(k_cont, mag_Ck, 'b');
xtitle("Magnitude Spectrum |c_k|", "Frequency index k", "Magnitude");
xgrid(1);


subplot(2,1,2);
plot(k_cont, Pk_cont, 'm');
xtitle("Power Density Spectrum P_k = |c_k|^2", "Frequency index k", "Power");
xgrid(1);
