clc; clear; clf;
k = 1.38e-23;
N = 6.2e23;

name = input("Enter the name of the solid: ", "string");
Te = input("Enter the value of the Einstein temperature (K): ");
Td = input("Enter the value of the Debye temperature (K): ");
T = 10:2*Td;

for i = 1:length(T)
    cvdp(i) = 3*N*k;
    x = Te / T(i);
    cve(i) = (3*N*k*(x^2)*exp(x)) / ((exp(x) - 1)^2);
    I = integrate('((y^4)*exp(y))/((exp(y)-1)^2)', 'y', 0, Td / T(i));
    cvd(i) = 9*N*k*I*(T(i) / Td)^3;
end

plot(T, [cvdp'; cve'; cvd']);
legend("Dulong Petit","Einstein","Debye")
