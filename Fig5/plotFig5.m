function X=plotFig5
%Function to plot the means and standard deviations of the polarization and
%scaled size over a 100 simulations for each c from 0.04 to 2 in the 
%Asynchronous update case and the Synchronous update case.

load CAP
load CAS
load CSP
load CSS

c=0.04:0.02:2;
e=[0.01,0.1,0.5,1,5,10]; %e value vector

for j=2:5 %Only plot the result for 0.1,0.5,1,5 (not 0.01 and 10)
AsynchPolar=CAP{1,j};
subplot(2,2,1) 
Y=AsynchPolar(:,:); %Polarization measurements returned from 100 simulations for each c
YY=mean(AsynchPolar(:,:)); %Mean of the polarization for each c
E=std(Y).*ones(1,size(AsynchPolar,2)); %Std dev of the polarization for each c
if j==2
    errorbar(c,YY,E,'-r');
elseif j==3
    errorbar(c,YY,E,'-g');
elseif j==4
    errorbar(c,YY,E,'-b');
elseif j==5
    errorbar(c,YY,E,'-k');
end
hold on
ylim([0 1])
title('Asynchronous update')
ylabel('Mean polarisation (\alpha)')
xlabel('c (relative strength of local attraction)')
end

for j=2:5
AsynchSize=CAS{1,j};
subplot(2,2,2)
Y=AsynchSize(:,:);
YY=mean(AsynchSize(:,:));
E=std(Y).*ones(1,size(AsynchSize,2));
if j==2
    errorbar(c,YY,E,'-r');
elseif j==3
    errorbar(c,YY,E,'-g');
elseif j==4
    errorbar(c,YY,E,'-b');
elseif j==5
    errorbar(c,YY,E,'-k');
end
hold on
ylim([0 1])
title('Asynchronous update')
ylabel('Mean size (\sigma)')
xlabel('c (relative strength of local attraction)')
end

for j=2:5
SynchPolar=CSP{1,j};
subplot(2,2,3)
Y=SynchPolar(:,:);
YY=mean(SynchPolar(:,:));
E=std(Y).*ones(1,size(SynchPolar,2));
if j==2
    errorbar(c,YY,E,'-r');
elseif j==3
    errorbar(c,YY,E,'-g');
elseif j==4
    errorbar(c,YY,E,'-b');
elseif j==5
    errorbar(c,YY,E,'-k');
end
hold on
ylim([0 1])
title('Synchronous update')
ylabel('Mean polarisation (\alpha)')
xlabel('c (relative strength of local attraction)')
end

for j=2:5
SynchSize=CSS{1,j};
subplot(2,2,4)
Y=SynchSize(:,:);
YY=mean(SynchSize(:,:));
E=std(Y).*ones(1,size(SynchSize,2));
if j==2
    errorbar(c,YY,E,'-r');
elseif j==3
    errorbar(c,YY,E,'-g');
elseif j==4
    errorbar(c,YY,E,'-b');
elseif j==5
    errorbar(c,YY,E,'-k');
end
hold on
ylim([0 1])
title('Synchronous update')
ylabel('Mean scaled size (\sigma)')
xlabel('c (relative strength of local attraction)')
end
