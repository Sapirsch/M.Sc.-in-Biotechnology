% This script creats 3 figures of the mutation analysis - venn diagram of
% diffrent dataset of DmutS mutations vs. ours, a hit map of all of our
% convergent mutations, and pie chart of the diversed functions of our
% mutations

clear

set(0,'DefaultAxesFontSize', 8); %Eight point Times is suitable typeface for an IEEE paper. Same as figure caption size
set(0,'DefaultAxesFontWeight', 'bold');
set(0,'DefaultFigureColor','w')
set(0,'defaulttextinterpreter','tex') %Allows us to use LaTeX maths notation
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultAxesLineWidth', 1);


figure('Name','Measured Data','NumberTitle','on'); %Let's make a simple time series plot of notional data
set(gcf, 'Units','centimeters')
set(gcf, 'Position',[0 0 18.3 18.3])


%% venn diagram of shared genes

subplot(7, 4, [1 2 5 6 9 10 13 14])
h = venn([802, 2508], 206, 'EdgeColor', 'none');
xlim([-40 40]);
ylim([-49 50.2])


%title('\textbf{401}', 'Interpreter','latex', 'FontSize', 13, 'position',[-50 -60])
%title('\textbf{1245}', 'Interpreter','latex', 'FontSize', 13, 'position',[20 20])
%title('\textbf{103}', 'Interpreter','latex', 'FontSize', 13, 'position',[10 20])


leg_1 = legend('\textbf{ Stagnating {$\Delta$mutS} }', '\textbf{ Rapidly dividing {$\Delta$mutS} }','Interpreter','latex', 'Location', 'SouthEast', 'EdgeColor', 'w', 'FontSize', 10, 'Orientation', 'vertical');
leg_1.ItemTokenSize = [10,10];
axis off


%% hit map of all convergent mutations

subplot(2, 3, [3 6]);

cols_hit = [7,7,7,7,0,7,7,7,0,0; 7,7,7,7,0,7,7,7,0,0; 7,7,7,7,0,7,7,7,0,0; 7,7,7,7,0,7,7,7,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0;4,4,0,4,0,4,0,0,0,0; 4,4,0,4,0,4,0,0,0,0; 0,0,0,0,0,0,2,2,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,3,0,0,0,3,3,0,0; 0,0,0,3,0,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,3,0,0,0,3,3; 0,0,0,0,2,0,0,0,2,0];
x_values = {'#1', '#2', '#3', '#4', '#5', '#6', '#7', '#8', '#9', '#10'}; 
genes = {'pepD -', 'ybdN -', 'yiaN -', 'pflC -', 'flhA -', 'Hypothetical protein -', 'mdh -', '2 -', 'ygcU -', '3 -', 'tsaA -', '4 -', 'wzxE -', 'gyrB -', 'stam bla Hypothetical protein -', 'fhuD -', 'Intergenic region -', 'yidC -', 'spoT -', 'yiiF -', 'yehA -', 'dusA -', 'yjiK -', 'gyrA -', 'kdpD -', 'yafX -', 'mdtF -', 'yiaJ -', 'yrfG -', 'mdtP -', 'ygdG -', 'gpmM -', 'yqiI -', 'leuB -' '6 -', 'moeA -'};
y_valuse = genes;

h = heatmap(x_values, y_valuse, cols_hit, 'CellLabelColor','none', 'FontName', 'Times', 'FontSize', 9.2);
hAx=h.NodeChildren(3);          % return the heatmap underlying axes handle
hAx.FontWeight='bold';
hCB=h.NodeChildren(2);          % the wanted colorbar handle
hCB.FontWeight='bold';



%% pie chart for mutated genes function

subplot(7, 4, [17 18 21 22 25 26])

pie_data = [9, 4, 5,  4, 14];
labels = {'\textbf{9}','\textbf{4}','\textbf{5}', '\textbf{4}', '\textbf{14}'};

pie(pie_data, labels)

leg_titles = {'\textbf{ Metabolism}', '\textbf{ DNA repair and replication}', '\textbf{ Protein transport}', '\textbf{ Response to antibiotics}', '\textbf{ Poorly characterized}'};
leg_1 = legend(leg_titles','Interpreter','latex', 'Location', 'NorthWest', 'EdgeColor', 'w', 'FontSize', 9.5, 'Orientation', 'vertical');
leg_1.ItemTokenSize = [10,10];

%% exporting into a png file

filename = 'pie_final.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')

