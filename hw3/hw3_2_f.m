% EE239AS.2, Spring 2017
% hw3_2_f

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S_isi = cell(1,8);


for i = 1:8
    S_isi{i} = exprnd(1/lambda(i), 1, 100);
    count{i} =  hist(S_isi{i}, 0:0.01:0.99);
end

subplot(5,3,9);  
bar(0:0.01:0.99, count{1}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(1)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{1})),'r'); hold on;
xlim([0,1]);

subplot(5,3,6);  
bar(0:0.01:0.99, count{2}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(2)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{2})),'r'); hold on;
xlim([0,1]);

subplot(5,3,2);  
bar(0:0.01:0.99, count{3}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(3)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{3})),'r'); hold on;
xlim([0,1]);

subplot(5,3,4);  
bar(0:0.01:0.99, count{4}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(4)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{4})),'r'); hold on;
xlim([0,1]);

subplot(5,3,7);  
bar(0:0.01:0.99, count{5}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(5)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{5})),'r'); hold on;
xlim([0,1]);

subplot(5,3,10);  
bar(0:0.01:0.99, count{6}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(6)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{6})),'r'); hold on;
xlim([0,1]);

subplot(5,3,14);  
bar(0:0.01:0.99, count{7}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(7)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{7})),'r'); hold on;
xlim([0,1]);

subplot(5,3,12);  
bar(0:0.01:0.99, count{8}); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], 1/lambda(8)), 'g'); hold on;
plot([0:0.01:1], exppdf( [0:0.01:1], expfit(S_isi{8})),'r'); hold on;
xlim([0,1]);