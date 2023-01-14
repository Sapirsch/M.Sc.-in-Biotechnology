% This code uses the calculated mutation proportion of each replicate, and 
% calculates the standard deviation of each mutation class for all
% replicates together

load ('mut_types_by_cols_divided')

col_1 = mut_types_by_cols_divided{1};
col_2 = mut_types_by_cols_divided{2};
col_3 = mut_types_by_cols_divided{3};
col_4 = mut_types_by_cols_divided{4};
col_5 = mut_types_by_cols_divided{5};
col_6 = mut_types_by_cols_divided{6};
col_7 = mut_types_by_cols_divided{7};
col_8 = mut_types_by_cols_divided{8};
col_9 = mut_types_by_cols_divided{9};
col_10 = mut_types_by_cols_divided{10};

cols = {col_1, col_2, col_3, col_4, col_5, col_6, col_7, col_8, col_9, col_10};

len_cols = length(cols);


AG_TC = [];
GA_CT = [];
AT_TA = [];
GT_CA = [];
AC_TG = [];
GC_CG = [];

mut_types = {AG_TC, GA_CT, AT_TA, GT_CA, AC_TG, GC_CG}; 

len_mut_types = length(mut_types);


for i=1:len_cols

    curr_col = cols{i};

    for j=1:len_mut_types

        mut_types{j}{end+1} = curr_col{j}; 

    end
    
end


%% standard error calculation


AG_TC.SE = 0;
GA_CT.SE = 0;
AT_TA.SE = 0;
GT_CA.SE = 0;
AC_TG.SE = 0;
GC_CG.SE = 0;

SE = [AG_TC.SE, GA_CT.SE, AT_TA.SE, GT_CA.SE, AC_TG.SE, GC_CG.SE];

SE_len = length(SE);


for j=1:SE_len

    SE(j) = std([mut_types{j}{:}]) / sqrt(length(mut_types{j}));

end


save('SE', 'SE')

