% This script takes the raw data of the posistions of mutations obtained in the experiment of Foster et al (Patricia) and annotates the mutated position with its proper gene

CDS =  getgenbank('NC_000913.3')

load('patricia')

position = patricia.position;

for k=1:length(position)
    
    curr_pos = position(k);
    
    for i=1:length(CDS)
    
    curr_CDS_ind = CDS(i).indices;
    
    if curr_pos >= curr_CDS_ind(1) && curr_pos >= curr_CDS_ind(2)
    
        patricia.gene(k) = CDS(i).gene;
   
    end
    
    end

end

save ('patricia_w_genes', 'patricia')
