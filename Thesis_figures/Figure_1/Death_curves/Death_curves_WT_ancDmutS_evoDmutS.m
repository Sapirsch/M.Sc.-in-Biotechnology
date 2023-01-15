% This script visualizes the death curves of WT, dmutS anc, dmutS evo
% strains

clear

load('means')
load('SEMs')

set(0,'DefaultAxesFontSize', 9); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);



%% This code prepares the data before creating the death curves

x_WT = [0, 2, 4, 6, 9, 11, 13, 16, 18, 20, 22, 25, 28, 30, 32];
x_anc= [0, 2, 4, 6, 9, 11, 13, 16, 18, 20];
x_evo= [0, 2, 4, 6, 9, 11, 13, 16, 18, 20, 22, 25, 28, 30, 32, 34, 37, 39, 41];

y_WT = means.WT;
y_anc = means.anc;
y_evo = means.evo;

SEM_WT = SEMs.WT;
SEM_anc = SEMs.anc;
SEM_evo = SEMs.evo;


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 12])


errorbar(x_WT, y_WT, SEM_WT, '-o','color',[50 180 0]./255,'LineWidth',2.5, 'MarkerSize', 1.8)
set(gca,'YScale','log');
hold on
errorbar(x_anc, y_anc, SEM_anc, '-o','color',[180 0 50]./255,'LineWidth',2.5, 'MarkerSize', 1.8)
hold on
errorbar(x_evo, y_evo, SEM_evo, '-o', 'color',[0 50 180]./255,'LineWidth',2.5, 'MarkerSize', 1.8); 

box off 
grid off
set(gca,'YMinorTick','off')


xlabel('\textbf{Time\ [Days]}', 'Interpreter','latex', 'FontSize', 13);
ylabel('\textbf{Log(Number of living cells/ml)}', 'Interpreter','latex', 'FontSize', 13)

%to remove the error bar icons from legend, we put a lot of variance into
%the variance we assign the legend
[lgd, icons, plots, txt] = legend('\textbf{ AncWT}', '\textbf{ Anc{$\Delta$mutS}}', '\textbf{ Evo{$\Delta$mutS}}','Interpreter','latex', 'Location', 'NorthEast', 'EdgeColor', 'w', 'FontSize', 11);

leg_1.ItemTokenSize = [12,10];

title('\textbf{A}', 'Interpreter','latex', 'FontSize', 20, 'position',[-4 10^10])

%% this part exports the figure into a png file

filename = 'Death_curve_final.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')
