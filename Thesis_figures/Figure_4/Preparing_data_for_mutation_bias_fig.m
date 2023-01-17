% This script prepares the data for the mutation bias figure

clear

% subplot 1:
ours_vs_patricia = [0.19, 0.52; 0.14, 0.46; 0.01, 0.01; 0.01, 0.01; 0.65, 0.02; 0.004, 0.004]; 

error_patricia = [0.03, 0.09; 0.02, 0.09; 0.003, 0.01; 0.005, 0.02; 0.03, 0.02; 0.003, 0.005]; 

% subplot 2:
single_vs_repeated = [0.25, 0.03; 0.15, 0.06; 0.02, 0; 0.01, 0; 0.56, 0.91; 0.005, 0]; 

error_repeated = [0.04, 0.01; 0.02, 0.02; 0.004, 0; 0.007, 0; 0.04, 0.02; 0.004, 0]; 


filename = 'Combined_figure_for_mutation_bias.mat'; 

save(filename);