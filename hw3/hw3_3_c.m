% EE239AS.2, Spring 2017
% hw3_3_c

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; 

mean_spikes = [];
count = [];
for t = 1:100;
    lambda = r0 + (rmax - r0)*cosd(((t-1)/100)^2*180-smax);
    count(t) = poissrnd(lambda, 1);
end

count_spikes =  hist(count, [1:100]);
bar(count_spikes/100); hold on; 

plot(poisspdf([1:100], poissfit(count)),'r');

xlim([0, 100]); 
ylim([0, 0.07]);
title('Inhomogeneous Poisson Process -- Count distribution');
