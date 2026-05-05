tau = 1;
Tp = 4;

F = linspace(-3, 3, 1000);
Xa = zeros(F);

for i = 1:length(F)
    if F(i) == 0 then
        Xa(i) = tau;
    else
        Xa(i) = tau * (sin(%pi * F(i) * tau) / (%pi * F(i) * tau))^2;
    end
end

mag_Xa = abs(Xa);
phase_Xa = zeros(F);

scf(0); clf();
subplot(2,1,1);
plot(F, mag_Xa, 'b');
xtitle("Magnitude Spectrum |Xa(F)|", "Frequency F (Hz)", "Magnitude");
xgrid(1);

subplot(2,1,2);
plot(F, phase_Xa, 'r');
a=gca(); 
a.data_bounds=[-3,-1; 3,1];
xtitle("Phase Spectrum \angle Xa(F)", "Frequency F (Hz)", "Phase (radians)");
xgrid(1);
