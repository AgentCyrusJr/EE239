% EE239AS.2, Spring 2017
% hw3_2_d

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S = cell(1,8);
count = cell(1,8);

for i = 1:8
    N = poissrnd(lambda(i), 1, 100);
    S{i} = N;
    count{i} =  hist(S{i}, [1:100]);
end

subplot(5,3,9);  
bar(count{1}/100); hold on; 
plot(poisspdf([1:100], lambda(1)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{1})),'r'); hold on;


subplot(5,3,6); 
bar(count{2}/100); hold on; 
plot(poisspdf([1:100], lambda(2)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{2})),'r'); hold on;

subplot(5,3,2);  
bar(count{3}/100); hold on; 
plot(poisspdf([1:100], lambda(3)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{3})),'r'); hold on;

subplot(5,3,4);  
bar(count{4}/100); hold on; 
plot(poisspdf([1:100], lambda(4)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{4})),'r'); hold on; 

subplot(5,3,7);  
bar(count{5}/100); hold on; 
plot(poisspdf([1:100], lambda(5)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{5})),'r'); hold on;

subplot(5,3,10);  
bar(count{6}/100); hold on; 
plot(poisspdf([1:100], lambda(6)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{6})),'r'); hold on;

subplot(5,3,14);  
bar(count{7}/100); hold on; 
plot(poisspdf([1:100], lambda(7)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{7})),'r'); hold on;

subplot(5,3,12);  
bar(count{8}/100); hold on; 
plot(poisspdf([1:100], lambda(8)), 'g'); hold on; 
plot(poisspdf([1:100], poissfit(S{8})),'r'); hold on;