% EE239AS.2, Spring 2017
% hw3_4_e

% Cong Peng, 904760493

load('ps3_data.mat')
mean_spike = [];
var_spike = [];
for i = 1:8
    count_spikes = [];
    for n = 1:182
        T = find(trial(n,i).spikes);
        count_spikes(n) = length(T) ;
    end
    mean_spike(i) = mean(count_spikes);
    var_spike(i) = var(count_spikes);
end

scatter(mean_spike, var_spike, 'r', 'filled');
hold on;
plot([1:10],[1:10], 'g', 'Linewidth', 2);
title('Fano factor');
xlim([0 10]);
ylim([0 10]);
xlabel('mean of spikes count');
ylabel('variance of spikes count');
