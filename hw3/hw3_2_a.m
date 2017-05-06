% EE239AS.2, Spring 2017
% hw3_2_a

% Cong Peng, 904760493

% Initiating the constants
clear all;
r0 = 35; rmax = 60; smax = 90; k = 0:7; s = k*45;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S = cell(1,8);
for i = 1:8
    S_temp = cell(5,1);
    for j = 1:5
        T= [];
        t = exprnd(1/lambda(i), 1, 100);
        
        T(1) = 0;
        for n = 2:100
            if(T(n-1) + t(n) > 1) break;
            end
            T(n) = T(n-1) + t(n);
        end
        S_temp{j} = T;
    end
    S{i} = S_temp;
end
 
subplot(5,3,2);  PlotSpikeRaster(S{3}); hold on;
subplot(5,3,4);  PlotSpikeRaster(S{4}); hold on;
subplot(5,3,6);  PlotSpikeRaster(S{2}); hold on;
subplot(5,3,7);  PlotSpikeRaster(S{5}); hold on;
subplot(5,3,9);  PlotSpikeRaster(S{1}); hold on;
subplot(5,3,10);  PlotSpikeRaster(S{6}); hold on;
subplot(5,3,12);  PlotSpikeRaster(S{8}); hold on;
subplot(5,3,14);  PlotSpikeRaster(S{7}); hold on;

