% EE239AS.2, Spring 2017
% hw3_4_f

% Cong Peng, 904760493

load('ps3_data.mat')

for i = 1:8
     t_all = [];
     for n = 1:182
        T = find(trial(n,i).spikes);
        if(length(T)>0)
            t(1) = T(1);
        end
        for j = 2:length(T)
            t(j) = T(j)-T(j-1);
        end
        spike_num(n) = length(T);
        t_all = [t_all,t];
    end 
    mean_spike(i) = 2*mean(spike_num); 
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
    hold on;
    [f,x]=hist(t_all/1000,20);
    bar(x,f/sum(f));
    xlim([0, 1]);
    x2 = [0:0.02:1];
    exp = exppdf(x2,1/mean_spike(i));
    hold on;
    plot(x2,exp/sum(exp),'r');
    hold on;
end