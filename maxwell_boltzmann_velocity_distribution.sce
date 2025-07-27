clc; clear; clf;
k = 1.38e-23; N = 6.23e23; pi = 3.14;
v = 0:1:4000;
T = 300:300:900;

n = input("Enter the no. of gases: ");

for r = 1:n
    name = input("Enter the name of the gas: ","string");
    M = input("Enter molar mass (g/mol) of " + string(name) + ": ");
    m = M / (N * 1000);
    
    disp("Temp(K) vmp vav vrms");
    
    for j = 1:length(T)
        a = m / (2 * k * T(j));
        
        for i = 1:length(v)
            f(j, i) = (4 * pi) * (a / pi)^(1.5) * (v(i)^2) * exp(-a * (v(i)^2));
        end
        
        [p, q] = max(f(j, :));
        vmp = v(q);
        vav = sqrt(8 / pi) * sqrt(k * T(j) / m);
        vrms = sqrt(3 * k * T(j) / m);
        
        disp([T(j) vmp     vav     vrms]);
    end
    
    subplot(n, 1, r);
    plot(v, f', 'linewidth', 5);
    xlabel('v (m/s)', 'fontsize', 5);
    ylabel('f(v)', 'fontsize', 5);
    legend('T = ' + string(T) + ' K');
    title('Maxwell speed distribution function for ' + string(name), 'fontsize', 5);
end
