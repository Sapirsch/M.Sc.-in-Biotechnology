% This scripts compare our mutation bias with the canonical mutation bias in the literature

% Check p.value of mutation bias compaired to Patricia's paper
% Write our muutation bias
% loop 1 to milion
    % mimic, take our number of mutation but from Patricia bias
    % Take 495 mutations according to Patricia bias
 % check if current iteration shows our bias or even a stronger one
 % if yes - add to counter 
 
 format compact
 
 our_mutation_num = 495;
 Patricias_mutation_num = 30000;
 
 %ask Avihu- Patricia's bias does not sum up to 1, it sums up to 1.024.
 
  mutation_bias.AT_to_GC.Patricia = 0.52;
  mutation_bias.AT_to_GC.ours = 0.192;
  
  mutation_bias.GC_to_AT.Patricia = 0.46;
  mutation_bias.GC_to_AT.ours = 0.135;
  
  mutation_bias.AT_to_TA.Patricia = 0.01;
  mutation_bias.AT_to_TA.ours = 0.012;
  
  mutation_bias.GC_to_TA.Patricia = 0.01;
  mutation_bias.GC_to_TA.ours = 0.01;
  
  mutation_bias.AT_to_CG.Patricia = 0.02;
  mutation_bias.AT_to_CG.ours = 0.649;
 
  mutation_bias.GC_to_CG.Patricia = 0.004;
  mutation_bias.GC_to_CG.ours = 0.004;
  
  
 counter = 0; %count the times in which our bias recvied
 rounds = 1000000000;
 
 for i=1:rounds
     curr_mut = randi([1,1024],495,1); %creating 495 by 1 matrix of random numbers between 1 to 1024 
     
     find_AT_to_GC = find(curr_mut >= 1 & curr_mut <= 520);
     num_AT_to_GC = length(find_AT_to_GC);
     
     find_GC_to_AT = find(curr_mut >= 521 & curr_mut <= 980);
     num_GC_to_AT = length(find_GC_to_AT);
     
     find_AT_to_TA = find(curr_mut >= 981 & curr_mut <= 990);
     num_AT_to_TA = length(find_AT_to_TA);
     
     find_GC_to_TA = find(curr_mut >= 991 & curr_mut <= 1000);
     num_GC_to_TA = length(find_GC_to_TA);
     
     find_AT_to_CG = find(curr_mut >= 1001 & curr_mut <= 1020);
     num_AT_to_CG = length(find_AT_to_CG);
     
     find_GC_to_CG = find(curr_mut >= 1021 & curr_mut <= 1024);
     num_GC_to_CG = length(find_GC_to_CG);
    
     if num_AT_to_CG >= 321 %in our experiment 321 out of 495 mutation were AT_to_CG
         counter = counter + 1;
     end
 end 
 p_value = counter/rounds;
 fprintf('p.value is %f\n', p_value)