% This script calculates the empirical p_value of the shared mutations with Foster et al mutation dataset

load('hit_genes_list.mat')

PV_counter = 0;
rounds = 1000000;

my_intersect = [];

for i=1:rounds
    
   curr_gene_list_ours = randperm(4321,401); 
   curr_gene_list_patricia = randperm(4321,1254); 

   
   ours_patricia_intersection = intersect(curr_gene_list_ours, curr_gene_list_patricia);
   
   my_intersect(i) = length(ours_patricia_intersection);
   
   if length(ours_patricia_intersection) >= length(hit_genes_list)
      
       PV_counter = PV_counter + 1;
       
   end
    
end

p_value = PV_counter/rounds;

save('p_value', 'p_value')

fprintf('The p value is %f', p_value)

