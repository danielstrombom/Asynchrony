function X=plotFigS1
%Function to plot the means and standard deviations of the polarization
%over 100 simulations for each (N,N_a) pair with N=10, 50, 100 and 200 and
%N_a from 0 to N.

load PolarNF

PolarN=PolarNF;

N=[10,50,100,200];

subplot(2,1,1)
i=1;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
   E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
   errorbar(pN,YY,E,'-k'); %Plot mean polarization and std dev.
%    plot(pN,YY,'-k')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update before synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')

    i=2;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-r'); %Plot mean polarization and std dev.
  %  plot(pN,YY,'-g')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update before synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
    
    i=3;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-g'); %Plot mean polarization and std dev.
 %   plot(pN,YY,'-b')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update before synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
    
    i=4;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-b'); %Plot mean polarization and std dev.
 %   plot(pN,YY,'-y')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update before synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
    
    
    load PolarNR

PolarN=PolarNR;

N=[10,50,100,200];

subplot(2,1,2)
i=1;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
   E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
   errorbar(pN,YY,E,'-k'); %Plot mean polarization and std dev.
%    plot(pN,YY,'-k')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update after synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')

    i=2;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-r'); %Plot mean polarization and std dev.
  %  plot(pN,YY,'-g')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update after synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
    
    i=3;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-g'); %Plot mean polarization and std dev.
 %   plot(pN,YY,'-b')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update after synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
    
    i=4;
    pN=(0:N(1,i))/N(1,i);
    Polar=PolarN{1,i};
    Y=Polar(:,:);
    YY=mean(Polar(:,:)); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Polar,2)); %Std dev of the polarization for each c
    errorbar(pN,YY,E,'-b'); %Plot mean polarization and std dev.
 %   plot(pN,YY,'-y')
    hold on
    ylim([0 1])
    xlim([0 1])
    title('Asynchronous update after synchronous')
    ylabel('Polarisation (\alpha)')
    xlabel('Proportion of asynchronously updating particles N_a')
