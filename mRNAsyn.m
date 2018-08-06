function output = mRNAsyn(k,g,initial)

%clear all; 
close all;

%%%%% stochastic %%%%%%
num = 2000;
tau = zeros(1,num);
mRNA = zeros(1,num);
mRNA(1,1) = initial;

for i = 2:num;
    a1 = rand;
    a2 = rand;
    tau_m_syn = 1/k*log(1/a1);
    tau_m_deg = 1/(g*mRNA(1,i-1))*log(1/a2);
    if tau_m_syn < tau_m_deg
        tau(1,i) = tau(1,i-1) + tau_m_syn;
        mRNA(1,i) = mRNA(1,i-1) + 1;
    else
        tau(1,i) = tau(1,i-1) + tau_m_deg;
        mRNA(1,i) = mRNA(1,i-1) - 1;
    end
end
% for plot
t1 = zeros(1,2*num);
value = zeros(1,2*num);

for j = 1:num;
    t1(1,2*j-1) = tau(1,j);
    t1(1,2*j) = tau(1,j);
    value(2*j-1) = mRNA(j);
    value(2*j) = mRNA(j);
end
%%%%%%%%%%%%



%%%%% deterministic %%%%%
interval = 0.05;
tspan = 0:interval:tau(1,num);
[t, y] = ode45(@det_mRNA, tspan, initial, [],k,g);
%%%%%%



%%%%% Plot %%%%%
plot(t,y,'r-');
% axis([0 4.5 50 150])
plot(t1(1,(2:2*num)),value(1,(1:(2*num-1))),'b-',t,y,'r-');
xlabel('time','Fontsize',20);
ylabel('value','Fontsize',20);
title('mRNA synthesis and degradation','Fontsize',20);
legend('stochastic', 'deterministic');

output = value(end);
end
    
function dydt = det_mRNA(t, y,m_syn,m_deg)
dydt = [m_syn - m_deg*y];
end

