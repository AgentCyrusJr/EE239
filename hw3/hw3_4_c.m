% EE239AS.2, Spring 2017
% hw3_4_c

% Cong Peng, 904760493

clear all;
load('ps3_data.mat')
degree = [30, 70, 110, 150, 190, 230, 310, 350];
mean_spikes = [];
for i = 1:8
    count_spikes = [];
    for n = 1:182
        T = find(trial(n,i).spikes);
        count_spikes = [ count_spikes,length(T) ];
    end
    scatter(degree(i)*ones(1,182), count_spikes, '.', 'k');
    mean_spikes(i) = mean(count_spikes);
    hold on;
end

scatter(degree, mean_spikes, 'filled', 'r');
hold on;
xlim([0,400]);
title('Real neural data -- Tuning curve');

% Fit the cosine tuning curve

createFit(degree, mean_spikes);