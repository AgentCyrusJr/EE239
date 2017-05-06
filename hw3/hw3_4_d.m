% EE239AS.2, Spring 2017
% hw3_4_d

% Cong Peng, 904760493

load('ps3_data.mat')

for i = 1:8
    count_spikes = [];
    for n = 1:182
        T = find(trial(n,i).spikes);
        count_spikes(n) = length(T) ;
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
    [h,x] =hist((count_spikes), 0:1:10); 
    bar(x,h/sum(h)); hold on;
    xlim([0,10]);
    x2 = [0:10];
    firing_rate(i) = mean(count_spikes);
    poiss = poisspdf(x2,firing_rate(i));
    plot(x2,poiss,'r');
    hold on;
end