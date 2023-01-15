% In this experiment, we were intrested in exploring whether the mutations randomly occurred or there are specific hotspot. to thie end, we measured the hamming distance of our mutations and random datasets and sougt for sequence context of mutational hotspots. 

% This script creats a new database of all mutatiions obtained in the coding region (synonymous and nonsynonymous mutations) and arange the sequences from the lagging strand to be oriented according to reverse complementary strand

load('data_muts_seqs_pos_strand')
strand = data_muts_seqs_pos_strand.strand;
seq = data_muts_seqs_pos_strand.sequence;

for i=1:length(strand)
    curr_strand = strand(i);
    curr_seq = seq{i};
    
    if curr_strand == -1 && seq(i) ~= ""
        data_muts_seqs_pos_strand.sequence(i) = seqrcomplement(data_muts_seqs_pos_strand.sequence(i));
        data_muts_seqs_pos_strand.nt_pos(i) = length(curr_seq) - data_muts_seqs_pos_strand.nt_pos(i) + 1;
    end     
    
end

data_seqs_oriented_according_to_strand_non_promoters = data_muts_seqs_pos_strand;
save('data_seqs_oriented_according_to_strand_non_promoters', 'data_seqs_oriented_according_to_strand_non_promoters')



