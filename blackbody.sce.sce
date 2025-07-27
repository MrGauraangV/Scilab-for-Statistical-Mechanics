clc;clear;clf;

c=3e8
h=6.64e-34
k=1.38e-23

T=[100;500;700;900]

a = 8*%pi/c^3

v=[0:1e12:10e14]

colors = ['r', 'g', 'b', 'm']

subplot(121)
for n=1:4
function ur = f(v)
    ur = a*v^2*k*T(n)
endfunction
    plot(v, f, colors(n))
    legend("T1","T2","T3","T4")
end

subplot(122)
for n=1:4
function up = g(v)
    up = a*v^3*h/(exp(h*v/k/T(n))-1)
endfunction

    plot(v, g, colors(n))

    legend("T1","T2","T3","T4")
end
    gca().data_bounds = [0, 0; 4e14, 6e-18];
