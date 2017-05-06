% EE239AS.2, Spring 2017
% hw3_3_a

% Cong Peng, 904760493

% Initiating the constants
clear all;
r0 = 35; rmax = 60; smax = 90; 
start = 0; s = start^2*pi;
lambda = r0 + (rmax - r0)*cosd(s-smax);
S = cell(5,1);


for i = 1:5
    T= []; T(1) = 0;
    for n = 2:100
        t = exprnd(1/lambda, 1);
        if(T(n-1) + t > 1) break;
            end
        T(n) = T(n-1) + t;
        % lambda changes according to t
        lambda = r0 + (rmax - r0)*cosd(t^2*pi-smax);   
    end
    S{i} = T;
end


PlotSpikeRaster(S);
xlabel('Time : msec'); 
title('Inhomogeneous Poisson Process -- Spike trains');

