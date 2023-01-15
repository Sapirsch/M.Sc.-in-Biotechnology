% This script creates a bar graph to compare mutation rates of evolved an
%d ancestral strains

clear

set(0,'DefaultAxesFontSize', 9); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 8.89])


%% preparing the data
error_anc= [3.30135*10^-5, 3.06*10^-5, 3*10^-5]; 
error_evo =[3*10^-6, 1.01*10^-6, 5*10^-6];
error_WT_arr = [3.04*10^-7, 3.4*10^-7, 4*10^-7];

error_WT = mean(error_WT_arr);

error_anc_arr = error_anc./error_WT;
error_evo_arr = error_evo./error_WT;

SE_anc = std( error_anc_arr ) / sqrt( length(error_anc_arr) );
SE_evo = std( error_evo_arr ) / sqrt( length(error_evo_arr) );
SE_WT = std( error_WT_arr ) / sqrt( length(error_WT_arr) );

anc_plot = [100; 0];
evo_plot = [0;10];

anc_SE = [SE_anc; NaN];
evo_SE = [NaN; SE_evo];


%% creating the figure

yyaxis left
b1 = bar(anc_plot, 'grouped', 'BarWidth', 0.5);
set(gca, 'YScale', 'log')

yyaxis right
b2 = bar(evo_plot, 'grouped', 'BarWidth', 0.5);
set(gca, 'YScale', 'log')


hold on

% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(anc_plot);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b1(i).XEndPoints;
end


% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(evo_plot);
% Get the x coordinate of the bars
a = nan(nbars, ngroups);

for i = 1:nbars
    a(i,:) = b2(i).XEndPoints;
end


% Plot the errorbars
errorbar(x',anc_plot,anc_SE,'k','linestyle','none');
hold on
errorbar(a',evo_plot,evo_SE,'k','linestyle','none');



%% exporting into a png file

filename = ['mutation rates.png'] ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')


