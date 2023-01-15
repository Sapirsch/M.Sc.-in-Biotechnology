% This script creats bar graphs for MIC (minimal inhibitory concentrartion) for antibitioncs (TM+cip, TM, cip)


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

subplot(9,2,[1 2 3 4 5 6 7 8 9 10])

anc_plot = [0.625; 0];
evo_plot = [0;0.25];

anc_SE = [0.0354; NaN];
evo_SE = [NaN; 0.0416];

yyaxis left
b1 = bar(anc_plot, 'grouped', 'BarWidth', 0.5);

yyaxis right
b2 = bar(evo_plot, 'grouped', 'BarWidth', 0.5);

xL = get(gca,'XLim');
line(xL,[10 2],'Color','r');

hold on

% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(anc_plot);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b2(i).XEndPoints;
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



%% TM

subplot(9,2,[11 13 15 17])

TM_anc = [5; 0];
TM_evo = [0; 10];

SE_anc = [0.8333; NaN];
SE_evo = [NaN; 2.1408];

%subplot 121;

yyaxis left
b1 = bar(TM_anc, 'grouped', 'BarWidth', 0.5);

yyaxis right
b2 = bar(TM_evo, 'grouped', 'BarWidth', 0.5);

xL = get(gca,'XLim');
line(xL,[10 10],'Color','r');

hold on

% Calculate the number of groups and number of bars in each group for anc
[ngroups,nbars] = size(TM_anc);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b1(i).XEndPoints;
end

% Calculate the number of groups and number of bars in each group for evo
[ngroups,nbars] = size(TM_evo);
% Get the x coordinate of the bars
a = nan(nbars, ngroups);

for i = 1:nbars
    a(i,:) = b2(i).XEndPoints;
end

% Plot the errorbars
errorbar(x',TM_anc,SE_anc,'k','linestyle','none');
hold on
errorbar(a',TM_evo,SE_evo,'k','linestyle','none');



%% cip 

subplot(9,2,[12 14 16 18])

cip_anc = [0.5; 0];
cip_evo = [0; 0.5];

SE_anc_cip = [0.0913; NaN];
SE_evo_cip = [NaN; 0.1667];

yyaxis left
b1 = bar(cip_anc, 'grouped', 'BarWidth', 0.5);

yyaxis right
b2 = bar(cip_evo, 'grouped', 'BarWidth', 0.5);

xL = get(gca,'XLim');
line(xL,[2 2],'Color','r');

hold on

% Calculate the number of groups and number of bars in each group for anc
[ngroups,nbars] = size(cip_anc);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);

for i = 1:nbars
    x(i,:) = b1(i).XEndPoints;
end

% Calculate the number of groups and number of bars in each group for evo
[ngroups,nbars] = size(cip_evo);
% Get the x coordinate of the bars
a = nan(nbars, ngroups);

for i = 1:nbars
    a(i,:) = b2(i).XEndPoints;
end

% Plot the errorbars
errorbar(x',cip_anc,SE_anc_cip,'k','linestyle','none');
hold on
errorbar(a',cip_evo,SE_evo_cip,'k','linestyle','none');


%% exporting into a png file

filename = 'new_new_MIC_anc_vs_evo_final_.png' ; %Descriptive name timestamp and .png file format

export_fig(filename, '-m3', '-nocrop')



