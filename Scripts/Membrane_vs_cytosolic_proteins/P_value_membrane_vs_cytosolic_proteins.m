% This script calculates the empirucal p_value of membrane proteins enrichment

ours.cytosolic_proteins = 0.582;
ours.membrane_proteins = 0.418;

WT.cytosolic_proteins = 0.8;
WT.membrane_proteins = 0.2;

counter = 0; % counting the times our bias recvied
rounds = 10000000;

for i=1:rounds
    
    curr_gene = randi([1,1000],325,1); % creating 325 (number of cytosolic and membrane proteins genes) by 1 matrix of random numbers between 1-1000 
    
    find_cytosolic_proteins= find(curr_gene >= 1 & curr_gene <= 800);
    num_cytosolic_proteins = length(find_cytosolic_proteins);
    
    find_membrane_proteins= find(curr_gene >= 801 & curr_gene <= 1000);
    num_membrane_proteins = length(find_membrane_proteins);
   
    if num_membrane_proteins >= 135 % in our experiment 135 out of 325 genes encode membrane proteins
        counter = counter + 1;
    end
    
end

p_value = counter/rounds;


