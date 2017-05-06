% EE239AS.2, Spring 2017
% hw3_2_e

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S = cell(1,8);
mean_spikes = [];
var_spikes = [];

for i = 1:8
    S{i} = poissrnd(lambda(i), 1, 100);
    mean_spikes(i) = mean(S{i});
    var_spikes(i) = var(S{i});
end

scatter(mean_spikes, var_spikes, 'r', 'filled');
hold on;
plot([2:70],[2:70], 'g', 'Linewidth', 2);
title('Fano factor');