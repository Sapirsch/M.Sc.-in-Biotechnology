% This scripts calculates Ruth Hershberg's mutation bias from 2021 paper

load('ruth.mat')

nts = ruth.nts;

overall_muts = 0;

AT_to_GC = 0;
GC_to_AT = 0;
AT_to_TA = 0;
GC_to_TA = 0;
AT_to_CG = 0;
GC_to_CG = 0;


for i=1:length(nts)

    curr_nts = nts(i);
        
    switch curr_nts
        case {"A->G" , "T->C"}
            AT_to_GC = AT_to_GC + 1;
            overall_muts = overall_muts + 1;

        case {"G->A" , "C->T"}
            GC_to_AT = GC_to_AT + 1;
            overall_muts = overall_muts + 1;

        case {"A->T" , "T->A"}
            AT_to_TA = AT_to_TA + 1;
            overall_muts = overall_muts + 1;

        case {"G->T" , "C->A"}
            GC_to_TA = GC_to_TA + 1;
            overall_muts = overall_muts + 1;

        case {"A->C" , "T->G"}
            AT_to_CG = AT_to_CG + 1;
            overall_muts = overall_muts + 1;

        case {"G->C" , "C->G"}
           GC_to_CG = GC_to_CG + 1;
           overall_muts = overall_muts + 1;

    end

end



proportion.AT_to_GC = AT_to_GC/overall_muts ;
proportion.GC_to_AT = GC_to_AT/overall_muts ;
proportion.AT_to_TA = AT_to_TA/overall_muts ;
proportion.GC_to_TA = GC_to_TA/overall_muts ;
proportion.AT_to_CG = AT_to_CG/overall_muts ;
proportion.GC_to_CG = GC_to_CG/overall_muts ;




