% This script  checks whether we and Ruth have joint mutated genes

load('ruth_data')
load('ours')

ruth = ruth_data;
hit_genes_list = {};
hit_ind = 1;

for i=1:length(ours)

    curr_our_gene = ours(i);

    for j=1:length(ruth)
        
        curr_ruths_gene = ruth(j);
    
        if curr_our_gene == curr_ruths_gene
            
           hit_genes_list{hit_ind} = curr_our_gene;
           
           hit_ind = hit_ind + 1;
            
        end
        
    end
              
        
end

save('hit_genes_list', 'hit_genes_list')
