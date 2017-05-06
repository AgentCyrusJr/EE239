% EE239AS.2, Spring 2017
% hw3_2_b

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
count = cell(1,8);

for i = 1:8
    
    count{i} = poissrnd(lambda(i), 1, 50);
    
end

subplot(5,3,9);  
bar(1:20:1000, count{1});
xlim([0, 1000]); hold on;

subplot(5,3,6); 
bar(1:20:1000, count{2});
xlim([0, 1000]); hold on;

subplot(5,3,2);  
bar(1:20:1000, count{3});
xlim([0, 1000]); hold on;

subplot(5,3,4);  
bar(1:20:1000, count{4});
xlim([0, 1000]); hold on;

subplot(5,3,7);  
bar(1:20:1000, count{5});
xlim([0, 1000]); hold on;

subplot(5,3,10);  
bar(1:20:1000, count{6});
xlim([0, 1000]); hold on;

subplot(5,3,14);  
bar(1:20:1000, count{7});
xlim([0, 1000]); hold on;

subplot(5,3,12);  
bar(1:20:1000, count{8});
xlim([0, 1000]); hold on;
