% This script checks for hit genes that were mutated in our evolution experiment and in Foster et al experiment

load("patricia_distinct_genes") 
load('ours')


patricias_genes = patricia_distinct_genes;
our_genes = ours.gene;
hit_genes_list = {};
hit_ind = 1;

for i=1:length(our_genes)
   
    curr_our_gene = our_genes(i);
    
    for j=1:length(patricias_genes)
        
        curr_patricias_gene = patricias_genes(j);
        
        if contains(curr_our_gene, curr_patricias_gene) == 1
            
           hit_genes_list{hit_ind} = curr_our_gene;
           
           hit_ind = hit_ind + 1;
            
        end
        
    end
              
        
end

save('hit_genes_list')