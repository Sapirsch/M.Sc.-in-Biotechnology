% This script generates sequences consist of 21 nucleotides of the mutated position and the 10 nucleotides upstream and downstream from this position

load('data_seqs_oriented_according_to_strand_non_promoters')
anc = data_seqs_oriented_according_to_strand_non_promoters.anc;
positions = data_seqs_oriented_according_to_strand_non_promoters.nt_pos;
seqs = data_seqs_oriented_according_to_strand_non_promoters.sequence;

seqs_of_21_nts_of_non_promoter_muts = [];
promoters = [];
pos_problems = [];
out_of_range = [];

for i = 1:length(seqs)
    curr_seq = seqs{i,1};
    pos = positions(i,1);
    if curr_seq == ""
        promoters{end+1,1} = i;
        continue 
    elseif curr_seq(pos) ~= anc(i,1)
        pos_problems{end+1,1} = i;
        continue
    elseif (pos - 10 <= 0) || (pos + 10 > length(curr_seq))
        out_of_range{end+1,1} = i;
        continue
    else
        x21_nts = curr_seq(pos-10:pos+10);
        seqs_of_21_nts_of_non_promoter_muts{end+1,1} = x21_nts;
    end
        
end
    
seqs_of_21_nts_of_non_promoter_muts = convertCharsToStrings(seqs_of_21_nts_of_non_promoter_muts);
save('seqs_of_21_nts_of_non_promoter_muts', 'seqs_of_21_nts_of_non_promoter_muts')