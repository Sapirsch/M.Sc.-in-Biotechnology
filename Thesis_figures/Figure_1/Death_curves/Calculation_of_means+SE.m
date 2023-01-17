
% This script calculates for WT, dmutS anc and dmutS evo strains the mean and the standared errors (SEM) of
% all replicates in each day, which eventually will be used to generate a
% death curve for each strain.


% WT strain:

Day0.WT = [25, 26, 25, 25, 27, 24, 25, 25, 26, 25];
Day2.WT = [22, 23, 22, 23, 24, 22, 22, 23, 23, 23];
Day4.WT = [22	21	21	22	21	20	21	20	21	23];
Day6.WT = [20	22	21	22	23	21	20	21	21	21];
Day9.WT = [20	22	20	19	22	20	20	20	21	19];
Day11.WT = [19	20	20	19	19	19	19	20	19	19];
Day13.WT = [19	17	18	19	19	17	18	18	17	19];
Day16.WT = [15	17	15	14	14	13	16	14	15	15];
Day18.WT = [12	14	12	12	12	12	12	14	12	12];
Day20.WT = [7	9	7	8	7	10	8	9	9];
Day22.WT = [7	7	8	7	6	6	7	8	8	7];
Day25.WT = [5	6	6	7	6	5	8	7	7	9];
Day28.WT = [3	6	6	4	4	5	7	7	5	4];
Day30.WT = [0	0	0	3	0	0	3	5	0	3];
Day32.WT = [0	0	0	0	0	0	0	0	0	0];



Days.WT = {Day0.WT, Day2.WT, Day4.WT, Day6.WT, Day9.WT, Day11.WT, Day13.WT, Day16.WT, Day18.WT, Day20.WT, Day22.WT, Day25.WT, Day28.WT, Day30.WT, Day32.WT};
Days_cal.WT = {};
means.WT = [];
SEMs.WT = [];

for i=1:length(Days.WT)
    
    DayX_cal.WT = 50.*2.^Days.WT{1,i};
    Days_cal.WT{1,i} = DayX_cal.WT;      

    ind2 = Days_cal.WT{1,i};
    mean_dayX.WT = mean(ind2);
    
    if mean_dayX.WT == 50
        mean_dayX.WT = 1;
    end
    
    means.WT(i) = mean_dayX.WT;
    
    SEM_dayX.WT = std(ind2) / sqrt(length(ind2));
    SEMs.WT(i) = SEM_dayX.WT;
    
        
end

% dmutS ancestor strain:
Day0.anc = [25, 26, 25, 25, 26, 26, 25, 25, 25];
Day2.anc = [24, 22, 22, 21, 23, 22, 22, 23, 21];
Day4.anc = [20	20	19	20	20	20	20	21	19];
Day6.anc = [18	19	18	19	20	20	18	19	18];
Day9.anc = [18	19	18	18	19	19	18	18	16];
Day11.anc = [16	16	16	15	17	17	17];
Day13.anc = [15	12	14	11	13	14	15	13];
Day16.anc = [6	5	8	6	8	10	10	5	5];
Day18.anc = [0	0	4	0	4	7	6	0	0];
Day20.anc = [0	0	0	0	0	0	0	0	0];



Days.anc = {Day0.anc, Day2.anc, Day4.anc, Day6.anc, Day9.anc, Day11.anc, Day13.anc, Day16.anc, Day18.anc, Day20.anc};
Days_cal.anc = {};
means.anc = [];
SEMs.anc = [];

for i=1:length(Days.anc)
    
    DayX_cal.anc = 50.*2.^Days.anc{1,i};
    Days_cal.anc{1,i} = DayX_cal.anc;      

    ind2 = Days_cal.anc{1,i};
    mean_dayX.anc = mean(ind2);
    
    if mean_dayX.anc == 50
        mean_dayX.anc = 1;
    end 
    
    means.anc(i) = mean_dayX.anc;
    
    SEM_dayX.anc = std(ind2) / sqrt(length(ind2));
    SEMs.anc(i) = SEM_dayX.anc;
    
        
end


% dmutS evolved strain:
Day0.evo = [24, 26, 27, 24, 25, 25, 26, 25, 26];
Day2.evo = [23	24	24	24	26	26	24	24	24];
Day4.evo = [23	22	22	25	26	25	25	23	23	24];
Day6.evo = [23	21	21	24	24	25	22	21	23	22];
Day9.evo = [22	21	20	22	23	23	22	22	23];
Day11.evo = [22	20	21	22	19	23	22	21	21];
Day13.evo = [21	20	18	19	18	21	21	18	19];
Day16.evo = [19	16	14	17	15	20	16	15	19];
Day18.evo = [18	15	14	16	14	18	15	15	17];
Day20.evo = [16	10	10	16	10	17	15	12	16];
Day22.evo = [15	7	9	15	9	17	10	10	16];
Day25.evo = [15	7	9	15	8	17	9	7	14];
Day28.evo = [13	5	7	13	7	15	7	5	13];
Day30.evo = [11	7	7	12	8	12	7	5	12];
Day32.evo = [7	0	0	6	0	8	0	0	8];
Day34.evo = [5	0	0	5	0	6	0	0	7];
Day37.evo = [0	0	0	3	0	4	0	0	5];
Day39.evo = [0	0	0	2	0	2	0	0	3];
Day41.evo = [0	0	0	0	0	0	0	0	0];


Days.evo = {Day0.evo, Day2.evo, Day4.evo, Day6.evo, Day9.evo, Day11.evo, Day13.evo, Day16.evo, Day18.evo, Day20.evo, Day22.evo, Day25.evo, Day28.evo, Day30.evo, Day32.evo, Day34.evo, Day37.evo, Day39.evo, Day41.evo};
Days_cal.evo = {};
means.evo = [];
SEMs.evo = [];

for i=1:length(Days.evo)
    
    DayX_cal.evo = 50.*2.^Days.evo{1,i};
    Days_cal.evo{1,i} = DayX_cal.evo;      

    ind2 = Days_cal.evo{1,i};
    mean_dayX.evo = mean(ind2);
    
    if mean_dayX.evo == 50
        mean_dayX.evo = 1;
    end
    
    means.evo(i) = mean_dayX.evo;
    
    SEM_dayX.evo = std(ind2) / sqrt(length(ind2));
    SEMs.evo(i) = SEM_dayX.evo;
    
        
end


save('means', 'means');
save('SEMs', 'SEMs')

