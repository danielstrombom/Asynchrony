function X=LabFigS1
%Function to investigate how the number of asynchronously updating
%particles (Na) relative to the total number of particles (N) affect the
%formation of polarized groups.


%Asynchronous update FIRST

    t=15000; %Maximum simulation time
    T=100; %Number of simulations for each (N,Na)-pair  

    N=[10,50,100,200]; %Vector of group sizes from 2 to 102 in increments of 2.
    sN=size(N,2); %Size on the N vector

    PolarN=cell(1,sN); %Initiate polarization measure storage

        %Initiate storage matrices for the k:th run

    for i=1:sN %Loop over all group sizes (10,50,100,200)

        kPolar=zeros(T,N(1,i)+1);

        for k=1:T %For each run
            for j=0:N(1,i) %Looping the index j in this way makes the number of asynchronously updating particles in the simulations 0,2,4,...,N (because Na=j-2, see next line)  
                M=SynchS1(N(1,i),j,t,0.1); %Simulation with N(i,1) particles of which j updated asynchronously BEFORE the rest update synchronously
                kPolar(k,j+1)=M(1,1); %Store polarization measurement from simulation
                [1,k,N(1,i),j] %Print on screen: 1 indicates that asynchronous update first, run number (k), Total particle number (N), Number of asynchronously updating particles (j-2) to track progress
            end
        end

    PolarN{1,i}=kPolar; %Store polarization measurements from k:th run

    end

    PolarNF=PolarN;

    save PolarNF PolarNF
        

    %Asynchronous update LAST   

    PolarN=cell(1,sN); %Initiate polarization measure storage

        %Initiate storage matrices for the k:th run

    for i=1:sN %Loop over all group sizes (10,50,100,200)

        kPolar=zeros(T,N(1,i)+1);

        for k=1:T %For each run
            for j=0:N(1,i) %Looping the index j in this way makes the number of asynchronously updating particles in the simulations 0,2,4,...,N (because Na=j-2, see next line)  
                M=SynchS1rev(N(1,i),j,t,0.1); %Simulation with N(i,1) particles of which j updated asynchronously AFTER the rest update synchronously
                kPolar(k,j+1)=M(1,1); %Store polarization measurement from simulation
                [2,k,N(1,i),j] %Print on screen: 2 indicated that asynchronous update last, run number (k), Total particle number (N), Number of asynchronously updating particles (j-2) to track progress
            end
        end

    PolarN{1,i}=kPolar; %Store polarization measurements from k:th run

    end

    PolarNR=PolarN;


    save PolarNR PolarNR
    
    
   plotFigS1;
   plotFig6;
