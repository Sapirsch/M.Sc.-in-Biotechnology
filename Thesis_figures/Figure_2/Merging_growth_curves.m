% This scripts merges 2 existed figures (of growth curves) into one figure

set(0,'DefaultAxesFontSize', 9); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 8.89])

% Load saved figures

firstfig=hgload('Replicate_6.fig');
secondfig=hgload('Replicate_10.fig');

% 2) Prepare subplots
figure
h(1)=subplot(1,2,1);
h(2)=subplot(1,2,2);

% 3) Paste figures on the subplots
copyobj(allchild(get(firstfig,'CurrentAxes')),h(1));
copyobj(allchild(get(secondfig,'CurrentAxes')),h(2));


% 4) Add legends to the new plot

l(1)=legend(h(1),'Force','Energy', 'bla');
l(2)=legend(h(2),'Moment','Sales', 'bla');
% Now we want all the plots to be on one figure

% 1) Load saved figures

firstfig=hgload('Replicate_6.fig');
secondfig=hgload('Replicate_10.fig');

% 2) Prepare subplots

figure
h(1)=subplot(1,1,1);
% h(2)=subplot(1,2,2);

% 3) Paste figures on the subplots

copyobj(allchild(get(firstfig,'CurrentAxes')),h(1));
copyobj(allchild(get(secondfig,'CurrentAxes')),h(1));


l(1)=legend(h(1),'Force','Energy','Moment','Sales');


%% exporting the file into a png file

filename = '_death_curve_w_evo.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')


