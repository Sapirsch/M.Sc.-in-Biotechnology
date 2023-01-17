% This scrips merges all 3 figs of the MIC bar graphs for all dmutS evo
% replicates for the combination of TM and cip, just TM and just cip

clear

set(0,'DefaultAxesFontSize', 9); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 18.3])



%% TM+cip

subplot(9,2,[9 10 11 12 13 14 15 16 17 18])

MIC_TM = [1.25, 0.3125, 0.625, 1.25, 1.25, 1.25, 1.25, 1.25, 1.25, 2.5,]; 
MIC_cip = [0.25, 0.0625, 0.125, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5]; 

yyaxis left
b1 = bar(MIC_TM, 'grouped');

yyaxis right
b2 = bar(MIC_cip, 'grouped');

xL = get(gca,'XLim');
line(xL,[2 2],'Color','r');



%% TM

subplot(9,2,[1 3 5 7])

MIC_TM_1 = [20, 10, 20, 20, 10, 5, 5, 5, 10, 20,]; 

b3 = bar(MIC_TM_1, 'grouped');

xL = get(gca,'XLim');
line(xL,[10,10],'Color','r');


%% cip

subplot(9,2,[2 4 6 8])

MIC_cip = [0.25, 0.25, 0.25, 0.5, 1, 1, 0.5, 0.5, 0.25, 0.5]; 

b4 = bar(MIC_cip, 'grouped');

xL = get(gca,'XLim');
line(xL,[2 2],'Color','r');


%% Exporting into a png file

filename = 'MIC_evo_replicates_final_.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')


