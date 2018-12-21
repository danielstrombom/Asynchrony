function X=LabSynchD
    
%Noise intensity as a function of c
    %Function for running 100 simulations for each c in 0.04 to 2 (in increments of 0.02) 
    %with the purpose of collecting polarization and scaled sized measurements
    %for Figure 2.

    t=15000; %Maximum time for each simulation
    T=70; %Number of runs for each c

    
    %ASYNCHRONOUS UPDATE CASE

    c=0.04:0.02:2; %c value vector
    del=[0.001,0.3,1,2];
    sc=size(c,2); %number of c values
    se=4;%number of delta values  
    
    CAP=cell(1,se);
    CAS=cell(1,se);
    CAT=cell(1,se);
    
    for j=1:se
        
        AsynchPolar=zeros(T,sc); %Initiate matrix for collecting polarization measurements 
        AsynchSize=zeros(T,sc); %Initiate matrix for collecting scaled size measurements
        AsynchTime=zeros(T,sc); %Initiate matrix for collecting time to group formation
        
            de=del(1,j);
        
        for k=1:T
            for i=1:sc
                M=SynchD(50,50,t,c(1,i),de); %Run one simulation with Asynch updates for the i:th value of c using the function SynchS.m
                AsynchPolar(k,i)=M(1,1); %The polarization measurement returned from the k:th run for the i:th value of c.
                AsynchSize(k,i)=M(1,2); %The scaled size measurement returned from the k:th run for the i:th value of c.
                AsynchTime(k,i)=M(1,3); %The time to group formation returned from the k:th run for the i:th value of c.

                [1 de k c(1,i)] %Print to command window to keep track of progress

            end
        end

        CAP{1,j}=AsynchPolar;
        CAS{1,j}=AsynchSize;
        CAT{1,j}=AsynchTime;
        
    
    end
    
    save CAP CAP
    save CAS CAS
    save CAT CAT

    %SYNCHRONOUS UPDATE CASE

    c=0.04:0.02:2; %c value vector
    del=[0.001,0.3,1,2];
    sc=size(c,2); %number of c values
    se=4;%number of delta values   
    
    CSP=cell(1,se);
    CSS=cell(1,se);
    CST=cell(1,se);
    
    for j=1:se
        
        SynchPolar=zeros(T,sc); %Initiate matrix for collecting polarization measurements 
        SynchSize=zeros(T,sc); %Initiate matrix for collecting scaled size measurements
        SynchTime=zeros(T,sc); %Initiate matrix for collecting time to group formation
        
        de=del(1,j);
        
        for k=1:T
            for i=1:sc
                M=SynchD(50,0,t,c(1,i),de); %Run one simulation with Asynch updates for the i:th value of c using the function SynchS.m
                SynchPolar(k,i)=M(1,1); %The polarization measurement returned from the k:th run for the i:th value of c.
                SynchSize(k,i)=M(1,2); %The scaled size measurement returned from the k:th run for the i:th value of c.
                SynchTime(k,i)=M(1,3); %The time to group formation returned from the k:th run for the i:th value of c.

                [2 de k c(1,i)] %Print to command window to keep track of progress

            end
        end

        CSP{1,j}=SynchPolar;
        CSS{1,j}=SynchSize;
        CST{1,j}=SynchTime;

    end
    
    CSP4A=CSP;
    CSS4A=CSS;
    CST4A=CST;
    
    save CSP CSP
    save CSS CSS
    save CST CST


    plotFig4;


