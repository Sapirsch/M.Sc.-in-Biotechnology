%% This scripts calculates the stansdard mutation bias for all replicates
% together without concidering overlaps

load ('mutations')

mut_class = mutations.class;
len_mut_class = length(mut_class);
overlap = mutations.overlap;


AG_TC = 0;
GA_CT = 0;
AT_TA = 0;
GT_CA = 0;
AC_TG = 0;
GC_CG = 0;

%mut_types = [AG_TC, GA_CT, AT_TA, GT_CA, AC_TG, GC_CG];

for i=1:len_mut_class

    curr_mut = mut_class(i);

    switch curr_mut
            case {"AG" , "TC"}
                AG_TC = AG_TC + 1;

            case {"GA" , "CT"}            
                GA_CT = GA_CT + 1;

            case {"AT" , "TA"}
                AT_TA = AT_TA + 1;

            case {"GT" , "CA"}
                GT_CA = GT_CA + 1;

            case {"AC" , "TG"}
                AC_TG = AC_TG + 1;

            case {"GC" , "CG"}
                GC_CG = GC_CG + 1;

            otherwise
                disp('something is wrong!')
    end

end

% calculating the mutation proportion

AG_TC_proportion = AG_TC;
GA_CT_proportion = GA_CT;
AT_TA_proportion = AT_TA;
GT_CA_proportion = GT_CA;
AC_TG_proportion = AC_TG;
GC_CG_proportion = GC_CG;

mut_types_proportions_no_overlaps = [AG_TC_proportion, GA_CT_proportion, AT_TA_proportion, GT_CA_proportion, AC_TG_proportion, GC_CG_proportion];

mut_types_proportions_no_overlaps = mut_types_proportions_no_overlaps/len_mut_class;

save('mut_types_proportions_no_overlaps', 'mut_types_proportions_no_overlaps')


%% This scripts calculates the stansdard mutation bias for all replicates
% together without concidering overlaps

load ('mutations')

mut_class = mutations.class;
len_mut_class = length(mut_class);
overlap = mutations.overlap;


AG_TC = 0;
GA_CT = 0;
AT_TA = 0;
GT_CA = 0;
AC_TG = 0;
GC_CG = 0;

%mut_types = [AG_TC, GA_CT, AT_TA, GT_CA, AC_TG, GC_CG];

for i=1:len_mut_class

    curr_mut = mut_class(i);

    switch curr_mut
            case {"AG" , "TC"}
                AG_TC = AG_TC + overlap(i);

            case {"GA" , "CT"}            
                GA_CT = GA_CT + overlap(i);

            case {"AT" , "TA"}
                AT_TA = AT_TA + overlap(i);

            case {"GT" , "CA"}
                GT_CA = GT_CA + overlap(i);

            case {"AC" , "TG"}
                AC_TG = AC_TG + overlap(i);

            case {"GC" , "CG"}
                GC_CG = GC_CG + overlap(i);

            otherwise
                disp('something is wrong!')
    end

end

% calculating the mutation proportion

AG_TC_proportion = AG_TC;
GA_CT_proportion = GA_CT;
AT_TA_proportion = AT_TA;
GT_CA_proportion = GT_CA;
AC_TG_proportion = AC_TG;
GC_CG_proportion = GC_CG;

mut_types_proportions = [AG_TC_proportion, GA_CT_proportion, AT_TA_proportion, GT_CA_proportion, AC_TG_proportion, GC_CG_proportion];

mut_types_proportions = mut_types_proportions/sum(overlap);

save('mut_types_proportions', 'mut_types_proportions')






