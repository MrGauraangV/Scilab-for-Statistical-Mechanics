clc; clear; clf;

k = 1.38e-23;
u = 0;
e=1.9e-19

T = 100:200:1100;
E = -0.5:0.001:0.5;

for i = 1:length(T)
    F = 1 ./ (exp(((E - u)*e ./ (k * T(i)))) + 1);
    subplot(211)
    plot(E, F)
end
