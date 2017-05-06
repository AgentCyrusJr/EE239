% EE239AS.2, Spring 2017
% hw3_2_f

% Cong Peng, 904760493

clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S_isi = cell(1,8);
T = [];
aver_isi = [];
cv = [];

for i = 1:8
    t = exprnd(1/lambda(i), 1, 100);
    aver_isi(i) =  mean(t)*1000;
    cv(i) = sqrt(var(t))/mean(t);
end
scatter(aver_isi, cv);
hold on;
x = [0:100];
y = [1:1];
plot([0 120], [1 1], 'k', 'LineWidth', 2 );
xlabel('average ISI');
ylabel('coefficient of variation');
