% This script traverse the 200 nucleotise upstream from the start codon of the gene yidC in E. coli (promiter sequence) and seearch for the purine-rich ribosome binding site (RBS) sequence

function [num_of_hits] = purines_in_promoter(promoter_seq)
    
    promoter_seq = reverse(promoter_seq); % We are interested in exploring the promoter sequence from the ATG site 
    RBS_seq = 'AGGAGG';
    
    space = 0;
    for i=1:length(promoter_seq) - space % Removing the spaces from the promoter sequence
       
        if promoter_seq(i - space) == " "
            promoter_seq(i - space) = [];
            
            space = space + 1;
        end
        
    end
    
    num_of_hits = zeros(length(promoter_seq) -(length(RBS_seq)-1),2); % Creating an 370x2 array that consists of the matching score and its index. 
    %A higher score represents a better match of the promoter's sequence with the RBS sequence
    
    % calculating the purines score for each character in the promoter sequence
    counter = 0;
    for i=1:length(promoter_seq)-(length(RBS_seq)-1) % loop for traversing each character in the promoter sequence
        
        for j=i:i+length(RBS_seq)-1 % loop for traversing the following 5 characters in the promoter sequence
            
            if (promoter_seq(j) == 'A') || (promoter_seq(j) == 'G')
                counter = counter + 1;
            end
            
        end
        
        num_of_hits(i,1) = i + length(RBS_seq) - 1;        
        num_of_hits(i,2) = counter;
        
        counter = 0;
        
    end
        
end

