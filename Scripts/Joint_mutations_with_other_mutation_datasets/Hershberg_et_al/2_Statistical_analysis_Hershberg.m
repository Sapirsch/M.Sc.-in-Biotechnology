% This script calculates the empirical P value for the joint mutated genes with Hershberg et al

load('hit_genes_list.mat')

PV_counter = 0;
rounds = 100000;

my_intersect = [];

for i=1:rounds
    
   curr_gene_list_ours = randperm(4321,401); 
   curr_gene_list_Ruth = randperm(4321,2238); 

   
   ours_Ruth_intersection = intersect(curr_gene_list_ours, curr_gene_list_Ruth);
   
   my_intersect(i) = length(ours_Ruth_intersection);
   
   if length(ours_Ruth_intersection) >= 188
      
       PV_counter = PV_counter + 1;
       
   end
    
end

p_value = PV_counter/rounds;

save('p_value', 'p_value')



