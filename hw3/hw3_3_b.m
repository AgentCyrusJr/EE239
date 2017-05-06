% EE239AS.2, Spring 2017
% hw3_3_b

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; 
count = [];

for i = 1:8
    for n = 1:50
        lambda = r0 + (rmax - r0)*cosd(((n-1)*20/1000)^2*180-smax);
        count(n) = poissrnd(lambda);
    end
end

bar(1:20:1000, count);
xlim([0, 1000]); ylim([0, 80]);
xlabel('Time : msec'); ylabel('firing rate : spikes / second');
title('Inhomogeneous Poisson Process -- Spike histogram');
hold on;
% Question : Does the spike histogram agree with the expected firing rate
% profile?

t = [0:0.01:1];
expected = r0 + (rmax - r0)*cosd(t.^2*180-smax);
plot([0:10:1000], expected, 'r');
legend('spikes count in 20ms bins','Expected Firing Rate Profile');