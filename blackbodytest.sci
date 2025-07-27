clc;clf;clear;

c=3e8
h=6.626e-34
k=1.38e-23

a=8*%pi/c^3

T=[200;300;400;500]

v=[0:1e12:1e14]

colours=['r','g','b','m']

function r=f(v,n)
    r=a.*v.^2.*k.*T(n)
endfunction

function p=g(v,n)
    p=a.*v.^2.*h.*v./(exp(h.*v./k./T(n))-1)
endfunction

for n=1:4
    subplot(211)
    plot(v,f,colours(n))
    legend("T1","T2","T3","T4")
    
    subplot(212)
    plot(v,g,colours(n))
    legend("T1","T2","T3","T4")
end
