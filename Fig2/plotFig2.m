function X=plotFig2
%Function to plot the means and standard deviations of the polarization and
%scaled size over a 100 simulations for each c from 0.04 to 2 in the 
%Asynchronous update case and the Synchronous update case.

load AsynchPolar 
load AsynchSize
load SynchPolar 
load SynchSize  

c=0.04:0.02:2; %c values

figure;
%ASYNCHRONOUS UPDATES
subplot(2,1,1) 
Y=AsynchPolar(:,:); %Polarization measurements returned from 100 simulations for each c
YY=mean(AsynchPolar(:,:)); %Mean of the polarization for each c
E=std(Y).*ones(1,size(AsynchPolar,2)); %Std dev of the polarization for each c
errorbar(c,YY,E); %Plot mean polarization and std dev.
hold on
Y=AsynchSize(:,:);
YY=mean(AsynchSize(:,:));
E=std(Y).*ones(1,size(AsynchSize,2));
errorbar(c,YY,E);
ylim([0 1])
title('Asynchronous update')
ylabel('Mean polarisation (\alpha) and scaled size (\sigma)')
xlabel('c (relative strength of local attraction)')

%ASYNCHRONOUS UPDATES
subplot(2,1,2)
Y=SynchPolar(:,:);
YY=mean(SynchPolar(:,:));
E=std(Y).*ones(1,size(SynchPolar,2));
errorbar(c,YY,E);
hold on
Y=SynchSize(:,:);
YY=mean(SynchSize(:,:));
E=std(Y).*ones(1,size(SynchSize,2));
errorbar(c,YY,E);
ylim([0 1])
title('Synchronous update')
ylabel('Mean polarisation (\alpha) and scaled size (\sigma)')
xlabel('c (relative strength of local attraction)')

