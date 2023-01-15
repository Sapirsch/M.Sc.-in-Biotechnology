% This script visualizes the death curves of WT anc vs. evo strains

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

x_anc= [0, 3, 7, 10, 14, 17, 21, 24, 26, 28, 30, 32];
x_evo= [0, 3, 7, 10, 14, 17, 21, 24, 26, 28, 30, 32];

y_anc = means.anc;
y_evo = means.evo;

SEM_anc = SEMs.anc;
SEM_evo = SEMs.evo;


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 8.89])

errorbar(x_anc, y_anc, SEM_anc, '-o','color',[0 180 50]./255,'LineWidth',2, 'MarkerSize', 1.8)
set(gca,'YScale','log');
hold on
errorbar(x_evo, y_evo, SEM_evo, '-o', 'color',[140 25 80]./255,'LineWidth',2, 'MarkerSize', 1.8); 

box off 
grid off
set(gca,'YMinorTick','off')


xlabel('\textbf{Time\ [Days]}', 'Interpreter','latex', 'FontSize', 13);
ylabel('\textbf{Log(Number of living cells/ml)}', 'Interpreter','latex', 'FontSize', 13)

% to remove the error bar icons from legend, we put a lot of variance into
%the variance we assign the legend
[lgd, icons, plots, txt] = legend('\textbf{ AncWT}', '\textbf{ EvoWT}','Interpreter','latex', 'Location', 'NorthEast', 'EdgeColor', 'w', 'FontSize', 11);

leg_1.ItemTokenSize = [12,10];


%% exporting the graph

filename = 'Death_curve_WT_anc_vs_evo_final.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')
