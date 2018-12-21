function X=plotFig3
%Function to plot the means and standard deviations of group formation time
%with Asynchronous updates for c from 0.04 to 0.18 (the cohesive polarized
%group regime).

load AsynchTime 

c=0.04:0.02:0.18; %c values
Y=AsynchTime(:,1:8); %Group formation times returned from 100 simulations for each c 
YY=mean(AsynchTime(:,1:8)); %Mean formation time for each c
E=std(Y).*ones(1,8); %Standard dev of formation time for each c
errorbar(c,YY,E); %Plot mean and std dev.
ylabel('Time steps to polarised group formation (\tau)')
xlabel('c (relative strength of local attraction)')


