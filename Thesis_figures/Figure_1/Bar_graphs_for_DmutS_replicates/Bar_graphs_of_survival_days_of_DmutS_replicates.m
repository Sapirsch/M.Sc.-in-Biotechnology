% This script creates bar graphs of each replicate of anc and evo dmutS strains

clear

set(0,'DefaultAxesFontSize', 9); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);

figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 10.89])


anc_vs_evo = [18, 41; 18, 32; 20, 32; 18, 41; 20, 32; 18, 41; 20, 32; 14, 28; 18, 32; 18, 41]; 

b = bar(anc_vs_evo, 'grouped', 'BarWidth', 1, 'LineWidth', 0.8);
b(1).FaceColor = [180,0,50]/255;
b(2).FaceColor = [0,50,180]/255;
%ylim([0 45]);
box off 

xlabel('\textbf{ {$\Delta$mutS} replicates}', 'Interpreter','latex', 'FontSize', 13);
set(gca,'xticklabel',{'#1';'#2';'#3'; '#4'; '#5'; '#6'; '#7'; '#8'; '#9'; '#10'});
ylabel('\textbf{Number of survival days}', 'Interpreter','latex', 'FontSize', 13)
leg_1 = legend('\textbf{ Anc{$\Delta$mutS} }', '\textbf{ Evo{$\Delta$mutS} }','Interpreter','latex', 'Location', 'NorthWest', 'EdgeColor', 'w', 'FontSize', 9.5, 'Orientation', 'horizontal');
leg_1.ItemTokenSize = [20,10];
title('\textbf{B}', 'Interpreter','latex', 'FontSize', 18, 'position',[-0.1 45])


%% This part exports the figure into a png file

filename = 'Bar_graph_for_dmuts_anc_vs_evo_cols_for_lifespan_final.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')
