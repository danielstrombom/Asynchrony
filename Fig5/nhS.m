function CMAL=nhS(i,P,R,L)

%Neighborhood function that determines the neighbors of particle i taking into
%account the periodic boundary conditions (9 cases) and calculates 
%the direction from particle i to the local center of mass of the neighbors. 

N=size(P,1); %Number of potential neighbours
AG=zeros(N,3); %To store the coordinates and heading angles of the neighbors.

count=0; %Initiate neighbor counter

for j=1:N %For all particles
    if j~=i %not itself
        if (P(i,1)-P(j,1))^2+(P(i,2)-P(j,2))^2<R^2 %If non-self particle j within the interaction radius of particle i (over no boundary)
                count=count+1; %Increase neighbour count
                AG(count,:)=[P(j,1),P(j,2),P(j,3)]; %Store coordinates and heading angle of neighbor
        elseif (P(i,1)-(P(j,1)-L))^2+(P(i,2)-P(j,2))^2<R^2 
                count=count+1;
                AG(count,:)=[P(j,1)-L,P(j,2),P(j,3)];
        elseif (P(i,1)-(P(j,1)-L))^2+(P(i,2)-(P(j,2)-L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1)-L,P(j,2)-L,P(j,3)];
        elseif (P(i,1)-P(j,1))^2+(P(i,2)-(P(j,2)-L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1),P(j,2)-L,P(j,3)];
        elseif (P(i,1)-(P(j,1)+L))^2+(P(i,2)-P(j,2))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1)+L,P(j,2),P(j,3)];
        elseif (P(i,1)-(P(j,1)+L))^2+(P(i,2)-(P(j,2)+L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1)+L,P(j,2)+L,P(j,3)];
        elseif (P(i,1)-P(j,1))^2+(P(i,2)-(P(j,2)+L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1),P(j,2)+L,P(j,3)];
        elseif (P(i,1)-(P(j,1)-L))^2+(P(i,2)-(P(j,2)+L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1)-L,P(j,2)+L,P(j,3)];
        elseif (P(i,1)-(P(j,1)+L))^2+(P(i,2)-(P(j,2)-L))^2<R^2
                count=count+1;
                AG(count,:)=[P(j,1)+L,P(j,2)-L,P(j,3)];
        else %particle j is not a neighbor
                AG=AG; 
        end
    end
end
 
AG=AG(1:count,:);

if size(AG,1)>0 %If have any neighbors
    
    CMx=mean(AG(:,1)); %x-coordinate of local center of mass
    CMy=mean(AG(:,2)); %y-coordinate of local center of mass
    
    CM=[CMx-P(i,1),CMy-P(i,2)]; %Direction toward the center of mass of the neighbors
    CM=(1/((CM(1,1)^2+CM(1,2)^2)^(1/2)))*CM; %Normalized direction toward the local center of mass
    
    CMAL=[CM;size(AG,1),0]; %Output

else %If no neighbours
    
    CMAL=[0,0;0,0]; %Output

end

