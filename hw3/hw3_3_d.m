% EE239AS.2, Spring 2017
% hw3_2_f

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; 

S_isi = cell(1,8);

t = [];
for i = 1:100
    lambda = r0 + (rmax - r0)*cosd(((i-1)/100)^2-smax);
    t(i) = exprnd(1/lambda, 1);
end

count_isi =  hist(t, 0:0.01:0.99);
bar(0:0.01:0.99, count_isi/100); hold on;

plot([0:0.01:1], exppdf( [0:0.01:1], expfit(t))/100,'r'); hold on;

xlim([0, 1]); 
ylim([0, 0.4]);
title('Inhomogeneous Poisson Process -- normalized ISI distribution');