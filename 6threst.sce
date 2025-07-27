clc;clear;clf;

N=6.02e23
k=1.38e-23

Te=input("what is einstein temp? ");
Td=input("what is debye temp? ")

T=10:2*Td

for i=1:length(T)
    
    x=Te/T(i)
    //cvdp(i)=3*N*k
   // cve(i) = 3*N*k*x^2*exp(x)/(exp(x)-1)^2
    
    I=integrate('exp(y)*y^4/((exp(y)-1)^2)','y',0,Td/T(i))
    cvd(i)=9*N*k*(T(i)/Td)^3*I
    
end

plot(T,[cvdp'; cve';cvd'])

