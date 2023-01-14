% This code calculates the mutation proportion of each replicate of the
% single mutations

load('mutations_single')

mutations = mutations_single;

col_1.muts = mutations.col_1;
col_2.muts = mutations.col_2;
col_3.muts = mutations.col_3;
col_4.muts = mutations.col_4;
col_5.muts = mutations.col_5;
col_6.muts = mutations.col_6;
col_7.muts = mutations.col_7;
col_8.muts = mutations.col_8;
col_9.muts = mutations.col_9;
col_10.muts = mutations.col_10;

cols = {col_1.muts, col_2.muts, col_3.muts, col_4.muts, col_5.muts, col_6.muts, col_7.muts, col_8.muts, col_9.muts, col_10.muts};

col_1.AG_TC = 0;
col_1.GA_CT = 0;
col_1.AT_TA = 0;
col_1.GT_CA = 0;
col_1.AC_TG = 0;
col_1.GC_CG = 0;

col_2.AG_TC = 0;
col_2.GA_CT = 0;
col_2.AT_TA = 0;
col_2.GT_CA = 0;
col_2.AC_TG = 0;
col_2.GC_CG = 0;

col_3.AG_TC = 0;
col_3.GA_CT = 0;
col_3.AT_TA = 0;
col_3.GT_CA = 0;
col_3.AC_TG = 0;
col_3.GC_CG = 0;

col_4.AG_TC = 0;
col_4.GA_CT = 0;
col_4.AT_TA = 0;
col_4.GT_CA = 0;
col_4.AC_TG = 0;
col_4.GC_CG = 0;

col_5.AG_TC = 0;
col_5.GA_CT = 0;
col_5.AT_TA = 0;
col_5.GT_CA = 0;
col_5.AC_TG = 0;
col_5.GC_CG = 0;

col_6.AG_TC = 0;
col_6.GA_CT = 0;
col_6.AT_TA = 0;
col_6.GT_CA = 0;
col_6.AC_TG = 0;
col_6.GC_CG = 0;

col_7.AG_TC = 0;
col_7.GA_CT = 0;
col_7.AT_TA = 0;
col_7.GT_CA = 0;
col_7.AC_TG = 0;
col_7.GC_CG = 0;

col_8.AG_TC = 0;
col_8.GA_CT = 0;
col_8.AT_TA = 0;
col_8.GT_CA = 0;
col_8.AC_TG = 0;
col_8.GC_CG = 0;

col_9.AG_TC = 0;
col_9.GA_CT = 0;
col_9.AT_TA = 0;
col_9.GT_CA = 0;
col_9.AC_TG = 0;
col_9.GC_CG = 0;

col_10.AG_TC = 0;
col_10.GA_CT = 0;
col_10.AT_TA = 0;
col_10.GT_CA = 0;
col_10.AC_TG = 0;
col_10.GC_CG = 0;


mut_types_by_cols = {{col_1.AG_TC, col_1.GA_CT, col_1.AT_TA, col_1.GT_CA, col_1.AC_TG, col_1.GC_CG}, {col_2.AG_TC, col_2.GA_CT, col_2.AT_TA, col_2.GT_CA, col_2.AC_TG, col_2.GC_CG}, {col_3.AG_TC, col_3.GA_CT, col_3.AT_TA, col_3.GT_CA, col_3.AC_TG, col_3.GC_CG}, {col_4.AG_TC, col_4.GA_CT, col_4.AT_TA, col_4.GT_CA, col_4.AC_TG, col_4.GC_CG}, {col_5.AG_TC, col_5.GA_CT, col_5.AT_TA, col_5.GT_CA, col_5.AC_TG, col_5.GC_CG}, {col_6.AG_TC, col_6.GA_CT, col_6.AT_TA, col_6.GT_CA, col_6.AC_TG, col_6.GC_CG}, {col_7.AG_TC, col_7.GA_CT, col_7.AT_TA, col_7.GT_CA, col_7.AC_TG, col_7.GC_CG}, {col_8.AG_TC, col_8.GA_CT, col_8.AT_TA, col_8.GT_CA, col_8.AC_TG, col_8.GC_CG}, {col_9.AG_TC, col_9.GA_CT, col_9.AT_TA, col_9.GT_CA, col_9.AC_TG, col_9.GC_CG}, {col_10.AG_TC, col_10.GA_CT, col_10.AT_TA, col_10.GT_CA, col_10.AC_TG, col_10.GC_CG}};


anc = mutations.anc;
mut_class = mutations.class;
overlap = mutations.overlap;


cols_len = length(cols);
%mut_type_cols_len = length(mut_types_by_cols);

%for k=1:mut_type_cols_len

for col_ind=1:cols_len

    curr_col = cols{col_ind};
    curr_col_len = length(curr_col);

    %mut_type_ind_1 = mut_types_by_cols{col_in}; 

    for BPS=1:curr_col_len

        curr_BPS = curr_col(BPS);
        curr_anc = anc(BPS);
        curr_mut_class = mut_class(BPS);

        if curr_BPS == curr_anc
            continue

        else

            switch curr_mut_class
            case {"AG" , "TC"}
                mut_types_by_cols{col_ind}{1} = mut_types_by_cols{col_ind}{1} + 1;

            case {"GA" , "CT"}            
                mut_types_by_cols{col_ind}{2} = mut_types_by_cols{col_ind}{2} + 1;

            case {"AT" , "TA"}
                mut_types_by_cols{col_ind}{3} = mut_types_by_cols{col_ind}{3} + 1;

            case {"GT" , "CA"}
                mut_types_by_cols{col_ind}{4} = mut_types_by_cols{col_ind}{4} + 1;

            case {"AC" , "TG"}
                mut_types_by_cols{col_ind}{5} = mut_types_by_cols{col_ind}{5} + 1;

            case {"GC" , "CG"}
                mut_types_by_cols{col_ind}{6} = mut_types_by_cols{col_ind}{6} + 1;

            otherwise
                disp('something is wrong!')
            end

        end

    end

end


%save('mut_types_by_cols', 'mut_types_by_cols')


%% calculating each col's proportion


mut_types_by_cols_divided = mut_types_by_cols;

col_1.len = 0;
col_2.len = 0;
col_3.len = 0;
col_4.len = 0;
col_5.len = 0;
col_6.len = 0;
col_7.len = 0;
col_8.len = 0;
col_9.len = 0;
col_10.len = 0;

col_lens = [col_1.len, col_2.len, col_3.len, col_4.len, col_5.len, col_6.len, col_7.len, col_8.len, col_9.len, col_10.len];

for k=1:length(col_lens)

    %curr_col_len = col_lens(k);

    curr_sums = 0;

    for u=1:6

        curr_sums = curr_sums + mut_types_by_cols{k}{u};


    end

    col_lens(k) = curr_sums;
end

for r=1:length(col_lens)

    for t=1:6
        
        mut_types_by_cols_divided{r}{t} = mut_types_by_cols_divided{r}{t} / col_lens(r);

    end
end

save('mut_types_by_cols_divided', 'mut_types_by_cols_divided')