% EE239AS.2, Spring 2017
% hw3_4_a

% Cong Peng, 904760493



load('ps3_data.mat')
for i  = 1:8
    S_temp = cell(5,1);
    for j = 1:5
        T = find(trial(j,i).spikes);
        S_temp{j} = T/1000;
    end
    switch i
         case 1
         subplot(4,3,6);
         title('Spike trains at degree of 30');
         case 2
         subplot(4,3,3);
         title('Spike trains at degree of 70');
         case 3
         subplot(4,3,1);
         title('Spike trains at degree of 110');
         case 4
         subplot(4,3,4);
         title('Spike trains at degree of 150');
         case 5
         subplot(4,3,7);
         title('Spike trains at degree of 190');
         case 6
         subplot(4,3,10);
         title('Spike trains at degree of 230');
         case 7
         subplot(4,3,12);
         title('Spike trains at degree of 310');
         case 8
         subplot(4,3,9);
         title('Spike trains at degree of 350');
    end
    PlotSpikeRaster(S_temp);
end
        