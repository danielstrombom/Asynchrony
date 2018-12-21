function X=LabSynchS

    %Function for running 100 simulations for each c in 0.04 to 2 (in increments of 0.02) 
    %with the purpose of collecting polarization and scaled sized measurements
    %for Figure 2.

    t=15000; %Maximum time for each simulation
    T=100; %Number of runs for each c

    
    %ASYNCHRONOUS UPDATE CASE

    c=0.04:0.02:2; %c value vector
    sc=size(c,2); %number of c values
    AsynchPolar=zeros(T,sc); %Initiate matrix for collecting polarization measurements 
    AsynchSize=zeros(T,sc); %Initiate matrix for collecting scaled size measurements
    AsynchTime=zeros(T,sc); %Initiate matrix for collecting time to group formation
    
    for k=1:T
        for i=1:sc
            M=SynchS(50,50,t,c(1,i)); %Run one simulation with Asynch updates for the i:th value of c using the function SynchS.m
            AsynchPolar(k,i)=M(1,1); %The polarization measurement returned from the k:th run for the i:th value of c.
            AsynchSize(k,i)=M(1,2); %The scaled size measurement returned from the k:th run for the i:th value of c.
            AsynchTime(k,i)=M(1,3); %The time to group formation returned from the k:th run for the i:th value of c.
            
            [1 k c(1,i)] %Print to command window to keep track of progress

            save AsynchPolar AsynchPolar %continuously save the polarization measurement matrix in case of a crash 
            save AsynchSize AsynchSize
            save AsynchTime AsynchTime
        end
    end


    %SYNCHRONOUS UPDATE CASE

    c=0.04:0.02:2; 
    sc=size(c,2);
    SynchPolar=zeros(T,sc);
    SynchSize=zeros(T,sc);
    SynchTime=zeros(T,sc); 

    for k=1:T
        for i=1:sc
            M=SynchS(50,0,t,c(1,i)); %Run one simulation with Synch updates for the i:th value of c using the function SynchS.m
            SynchPolar(k,i)=M(1,1);
            SynchSize(k,i)=M(1,2);
            SynchTime(k,i)=M(1,3);

            [2 k c(1,i)] %

            save SynchPolar SynchPolar
            save SynchSize SynchSize    
            save SynchTime SynchTime
        end
    end

    plotFig2;
    figure;
    plotFig3;

