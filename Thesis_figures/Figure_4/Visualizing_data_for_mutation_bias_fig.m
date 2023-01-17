% This script visualizes the combination of the 2 mutation bias figures into
% one single figure

clear

load('Combined_figure_for_mutation_bias.mat')

set(0,'DefaultAxesFontSize', 8); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 8.89])


%% This code creates a bar graph with error bars to compare our mutation
% bias with the caninical mutation bias

ours_vs_patricia = [0.19, 0.52; 0.14, 0.46; 0.01, 0.01; 0.01, 0.01; 0.65, 0.02; 0.004, 0.004]; 
error_patricia = [0.03, 0.09; 0.02, 0.09; 0.007, 0.01; 0.005, 0.02; 0.03, 0.02; 0, 0]; 

subplot 121;

b = bar(ours_vs_patricia, 'grouped', 'BarWidth', 1, 'LineWidth', 0.8);
b(1).FaceColor = [0,114,189]/255;
b(2).FaceColor = [186,26,72]/255;
ylim([0 1]);
box off 
%grid on
%ax = gca;
%ax.GridAlpha = 0.55;

hold on

% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(ours_vs_patricia);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end

% Plot the errorbars
errorbar(x',ours_vs_patricia,error_patricia,'k','linestyle','none','CapSize', 5, 'LineWidth', 0.8);


xlabel('\textbf{Type of substitution}', 'Interpreter','latex', 'FontSize', 13);
set(gca,'xticklabel',{'A:T-G:C';'G:C-A:T';'A:T-T:A'; 'G:C-T:A'; 'A:T-C:G'; 'G:C-C:G'});
ylabel('\textbf{Fraction of BPS}', 'Interpreter','latex', 'FontSize', 13)
leg_1 = legend('\textbf{ Stagnating {$\Delta$mutS} }', '\textbf{ Canonical {$\Delta$mutS} }','Interpreter','latex', 'Location', 'NorthWest', 'EdgeColor', 'w');
leg_1.ItemTokenSize = [20,10];
text(4.777, 0.7, '*', 'Interpreter','latex', 'FontSize', 10, 'FontWeight', 'bold') %significant star
title('\textbf{A}', 'Interpreter','latex', 'FontSize', 15, 'position',[-0.5 1])
%pbaspect([2 1 0])



%% This script creates a bar graph with error bars to compare the mutations
% biases of single vs. convergent mutations

single_vs_repeated = [0.25, 0.03; 0.15, 0.06; 0.02, 0; 0.01, 0; 0.56, 0.91; 0.005, 0]; 
error_repeated = [0.04, 0.01; 0.02, 0.02; 0.004, 0; 0.007, 0; 0.04, 0.02; 0, 0]; 

subplot 122;

%set(gcf, 'Position',[11.4 0 10 8.89])
b2 = bar(single_vs_repeated, 'grouped', 'BarWidth', 1, 'LineWidth', 0.8);
b2(1).FaceColor = [0,114,189]/255;
b2(2).FaceColor = [186,26,72]/255;
ylim([0 1]);
box off 
%YGrid on 
%ax = gca;
%ax.GridAlpha = 0.55;

hold on

% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(single_vs_repeated);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b2(i).XEndPoints;
end

% Plot the errorbars
errorbar(x',single_vs_repeated,error_repeated,'k','linestyle','none', 'CapSize', 5, 'LineWidth', 0.8);
xlabel('\textbf{Type of substitution}', 'Interpreter','latex', 'FontSize', 13);
set(gca,'xticklabel',{'A:T-G:C';'G:C-A:T';'A:T-T:A'; 'G:C-T:A'; 'A:T-C:G'; 'G:C-C:G'});
ylabel('\textbf{Fraction of BPS}', 'Interpreter','latex', 'FontSize', 13)
leg_2 = legend('\textbf{ Single mutations}', ['\textbf{ Convergent mutations}'],'Interpreter','latex', 'Location', 'NorthWest', 'EdgeColor', 'w');
leg_2.ItemTokenSize = [20,10];
title('\textbf{B}', 'Interpreter','latex', 'FontSize', 15, 'position',[-0.5 1])
text(5.06353, 0.95, '*', 'Interpreter','latex', 'FontSize', 10, 'FontWeight', 'bold')

hold off


%% Exporing into a png file

filename = 'Combined_figures_mutation_bias_final.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')
