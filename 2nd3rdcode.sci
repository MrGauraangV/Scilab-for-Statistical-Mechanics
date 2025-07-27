clc;clear;clf;

N=6.02e23
k=1.38e-23
pi=%pi
v=0:1:4000
T=300:300:900

M=input("Molar mass of gas: ")
m=M/(1000*N)

disp("Temp(K) vrms ")
colours=['r','g','b']

for i=1:length(T)
    
    a=m./2./k./T(i)
    
    F = 4 * pi * (a/pi)^1.5 .* v.^2 .* exp(-a * v.^2);
    
    vavg=sqrt(8.*k.*T(i)./pi./m)
    vrms=sqrt(3.*k.*T(i)./m)
    [p,q]=max(F)
    vmax=v(q)
    
    disp([T(i) vrms ])

end
