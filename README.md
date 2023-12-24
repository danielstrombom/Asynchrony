Code for Strömbom, D., Hassan, T., Hunter Greis, W., & Antia, A. (2019). Asynchrony induces polarization in attraction-based models of collective motion. Royal Society open science, 6(4), 190381. https://doi.org/10.1098/rsos.190381


INSTRUCTIONS FOR (RE)GENERATING FIGURES 2-6 and S1 VIA NEW SIMULATIONS OR FROM APPENDED DATA.


Download the folders Fig2, Fig4, Fig5 and Fig6S1 to your computer.


(RE)GENERATE FIG 2 AND FIG 3

Set Fig2 as Current Folder in Matlab.

To run a complete set of new simulations and generate new Fig 2 and 3 run the script LabSynchS.m. This script calls the main simulation function (SynchS.m) 100 times for each c from 0.04 to 2 in increments of 0.02. May take many hours to finish. 

To regenerate Fig 2 and 3 from the same data used for the figures in the manuscript set Current Folder Fig2 > Data and run plotFig2.m and plotFig3.m.


NOTE: Figure/font size, colour/width of lines and other superficial features of the plots you generated will/may differ from the ones in the manuscript, but the actual values (means and std dev) will be identical if you regenerated them from the appended data.


(RE)GENERATE FIG 4

Set Fig4 as Current Folder in Matlab.

To regenerate Fig 4 from the same data used for the figure in the manuscript set Current Folder Fig4 > Data and run plotFig4.m

To run a complete set of new simulations and generate new Fig 5 run the script LabSynchD.m. This script calls the main simulation function (SynchD.m) 70 times for each c from 0.04 to 2 in increments of 0.02 and for each delta value 0.001,0.3,1,2. May take several days to finish.


(RE)GENERATE FIG 5

Set Fig5 as Current Folder in Matlab.

To run a complete set of new simulations and generate new Fig 5 run the script LabSynchN.m. This script calls the main simulation function (SynchS.m) 70 times for each c from 0.04 to 2 in increments of 0.02 and for each noise value e=c/10,c/2,c,5c. May take several days to finish. 

To regenerate Fig 5 from the same data used for the figure in the manuscript set Current Folder Fig5 > Data and run plotFig5.m


(RE)GENERATE FIG S1 and S6

Set Fig6S1 as Current Folder in Matlab.

To run a complete set of new simulations and generate a new Fig S1 and 6 run the script LabFigS1.m. This script calls the main simulation functions (SynchS1.m (asynch first) and SynchS1rev.m (asynch last)) 100 times for each (N,Na)-pair, where N=10,50,100,200 and N_a from 0 to N. May take several days to finish.

To regenerate Fig S1 or Fig 6 from the same data used for the figure in the manuscript set Current Folder Fig6 > Data and run plotFig6.m and plotFigS1.m



IMPORTANT NOTE: All code have been tested on a Mac running MATLAB_R2016b and a PC running MATLAB_R2017a and there were no problems. However, when running the plotFig4.m on a PC with MATLAB_R2016a it kept crashing citing an error involving ’xticklabels’. Hopefully this is Matlab version issue and you are running MATLAB_R2016b or newer. 
