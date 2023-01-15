% This scripts creates a ramdom database and compares their hamming distances

load('hamm_dist_mat_of_non_promoter_muts')

nts = 'ATGC';
rand_num = randi([1, 4], 343, 21);
rand_seqs = nts(rand_num);
hamm_dist_mat_of_rand_seqs = zeros(343,343);

for i=1:length(rand_seqs)
    
    for j=1:length(rand_seqs)
        
        hamm_dist_mat_of_rand_seqs(i,j) = pdist2(rand_seqs(i,:), rand_seqs(j,:), 'hamming');
        
    end
    
end
 

figure;
histogram(hamm_dist_mat_of_non_promoter_muts, 'facecolor','k');
hold on;
histogram(hamm_dist_mat_of_rand_seqs, 'facecolor','r');
hold off;
