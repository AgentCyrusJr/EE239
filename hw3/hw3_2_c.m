% EE239AS.2, Spring 2017
% hw3_2_c

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S = cell(1,8);
mean_spikes = [];
for i = 1:8
    N = poissrnd(lambda(i), 1, 100);
    S{i} = N;
    scatter(s(i)*ones(1,100), S{i}, '.', 'k');
    mean_spikes(i) = mean(S{i});
    hold on;
end

scatter(s, mean_spikes, 'filled', 'r');
hold on;
step = 0:360;
lambda = r0 + (rmax - r0)*cosd(step-smax);
plot(step, lambda, 'g');
xlim([0,360]);