function X=plotFig4

load CAP
load CAS

load CSP
load CSS

c=0.04:0.02:2;
subplot(2,2,1)
for i=1:4
    Y=CAP{1,i}; %Polarization measurements returned from 100 simulations for each c
    YY=mean(Y); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Y,2)); %Std dev of the polarization for each c
    if i==1
    errorbar(c,YY,E,'-k');
elseif i==2
    errorbar(c,YY,E,'-r');
elseif i==3
    errorbar(c,YY,E,'-g');
elseif i==4
    errorbar(c,YY,E,'-b');
end
hold on
ylim([0 1])
title('Asynchronous update')
ylabel('Mean polarisation (\alpha)')
xlabel('c (relative strength of local attraction)')
end

subplot(2,2,2)
for i=1:4
    Y=CAS{1,i}; %Polarization measurements returned from 100 simulations for each c
    YY=mean(Y); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Y,2)); %Std dev of the polarization for each c
    if i==1
    errorbar(c,YY,E,'-k');
elseif i==2
    errorbar(c,YY,E,'-r');
elseif i==3
    errorbar(c,YY,E,'-g');
elseif i==4
    errorbar(c,YY,E,'-b');
end
hold on
ylim([0 1])
title('Asynchronous update')
ylabel('Mean size (\sigma)')
xlabel('c (relative strength of local attraction)')
end

subplot(2,2,3)
for i=1:4
    Y=CSP{1,i}; %Polarization measurements returned from 100 simulations for each c
    YY=mean(Y); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Y,2)); %Std dev of the polarization for each c
    if i==1
    errorbar(c,YY,E,'-k');
elseif i==2
    errorbar(c,YY,E,'-r');
elseif i==3
    errorbar(c,YY,E,'-g');
elseif i==4
    errorbar(c,YY,E,'-b');
end
hold on
ylim([0 1])
title('Synchronous update')
ylabel('Mean polarisation (\alpha)')
xlabel('c (relative strength of local attraction)')
end

subplot(2,2,4)
for i=1:4
    Y=CSS{1,i}; %Polarization measurements returned from 100 simulations for each c
    YY=mean(Y); %Mean of the polarization for each c
    E=std(Y).*ones(1,size(Y,2)); %Std dev of the polarization for each c
    if i==1
    errorbar(c,YY,E,'-k');
elseif i==2
    errorbar(c,YY,E,'-r');
elseif i==3
    errorbar(c,YY,E,'-g');
elseif i==4
    errorbar(c,YY,E,'-b');
end
hold on
ylim([0 1])
title('Synchronous update')
ylabel('Mean size (\sigma)')
xlabel('c (relative strength of local attraction)')
end