% This function simulates one single fluctuation assay casuing mutational events of E. coli (genome size ~ 5000 genes) resulting in an antibitic resistace

function hit_mut_cells = SingleFlucAssay(genome_size,n0,K,mut_rate,specific_mut_sites_num)

    % mut_rate = # cells until a mutation
    
    specific_mut_sites = randi(genome_size,specific_mut_sites_num,1);
    n=n0;
    gens = 0;
    general_mut_cells = 0;
    hit_mut_cells = 0;
    
    while n<K
        % doubling the genral population
        n=n*2;
        gens = gens +1;
        
        % count NEW mutant cells
        new_general_mut_cells = floor((n/2)/mut_rate);
        general_mut_cells = general_mut_cells + new_general_mut_cells;
        
        % doubling of the "desired" mutated cells (hits) from the preveious generations
        hit_mut_cells = hit_mut_cells*2; 
        
        % count how many of the new mutated cells are actually "desired" hits
        new_hit_muts = ismember(randi(genome_size,new_general_mut_cells,1),specific_mut_sites);
        new_hit_muts = sum(new_hit_muts);
        
        hit_mut_cells = hit_mut_cells + new_hit_muts;  
        
    end