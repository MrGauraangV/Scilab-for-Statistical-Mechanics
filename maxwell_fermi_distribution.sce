clc; clf; clear;
e=1.6e-19; k=1.38e-23; u=0;

E=-0.5:.001:0.5;
T=[100:200:1100]

dist=['Maxwell-Boltzmann','Fermi-Dirac']
a=0

for n=1:2
    for j=1:length(T)
        for i=1:length(E)
            f(j,i)=1/(exp(((E(i)-u)*e)/(k*T(j)))+a);
        end
     end
a=a+1
subplot(2,1,n)
plot(E',f','linewidth',4)
xgrid()
ylabel('f(E)','fontsize',4)
xlabel('Energy (eV)','fontsize',4)
legend('T= '+string(T)+' K')
title(string(dist(n))+' distribution for u=' +string(u),'fontsize',4)
end
