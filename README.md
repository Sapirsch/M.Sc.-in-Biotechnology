# M.Sc. in Biotechnology

Note : All computational work from my M.Sc thesis (all written in MATLAB)

## Abstract

Humanity’s quest to prolong life is as old as life itself. Since the ancient times, humans have sought ways to increase their lifespan, and over the recent decades, aging studies have gained traction in an attempt to solve this puzzle. In previous studies, genomic instability due to accumulation of DNA damage has been found to accelerate the cellular aging process and can even cause a shift towards programmed cell death. In microorganisms, there has been evidence that as a result of their elevated mutation rate, hypermutator strains have a lower viability than non-mutator wild-type strains. Still, the molecular mechanisms underlying extended viability remain elusive in hypermutators. In this study, we employed adaptive laboratory evolution on hypermutator _Escherichia coli_ cells to select for mutants with prolonged lifespan and lowered mutation rate under non-dividing stagnating conditions. Our results demonstrate that the hypermutator strain doubled its lifespan after evolution. This lifespan extension did not cause apparent trade-offs in cellular fitness. Interestingly, the evolved hypermutator cells ended up outliving the wild-type cells, and maintaining a milder death rate post evolution. Our mutation analysis revealed several genes associated with DNA repair under stress conditions, including _mdh_, _yidC_ and _spoT_. We have also identified a 32-fold deviation from the canonical mutation bias, favoring A:T to C:G transversion. Furthermore, our preliminary results have shown a 10-fold reduction in mutation rates of evolved populations. We suggest that hypermutator cells can extend their lifespan during evolution by inducing genetic and molecular mechanisms to compensate for their compromised DNA repair machinery. These findings may open up additional research avenues to elucidate mechanisms responsible for improved survival in various organisms, and may even be applicable for improving usages of beneficial microbes in biotechnology, medicine, food, and agriculture.

## Main Results

### Adaptive lab evolution (ALE) experiment resulted in a remarkable lifespan extension

![Alt text](Figures/1.1_Death_curve_final.png)
![Alt text](Figures/1.2_Bar_graph_for_dmuts_anc_vs_evo_cols_for_lifespan_final.png)

<sub>**Figure 1**: Death curve analysis of ancestral and evolved strains.
**(A)** Death curves of AncWT, Anc&Delta;mutS and Evo&Delta;mutS strains. The AncWT strain survived for 32 days an ongoing starvation under stagnating conditions. The Anc&Delta;mutS strain remained viable for only 20 days and had an elevated death rate. The Evo&Delta;mutS strain doubled its lifespan and survived the stagnating conditions for a total of 41 days. **(B)** Number of survival days of each ancestral and evolved &Delta;mutS replicates. Despite the lifespan variation the Evo&Delta;mutS replicates have shown, all evolved replicates displayed a considerable lifespan increase relative to their corresponded ancestral replicates. Four replicates even able survived the stagnating conditions for 41 days, while their ancestors survived such conditions for only 18 days. <sub>

### No apparent trade-offs in cellular fitness after lifespan extension

![Alt text](Figures/2.1_Rep_4_Rep_5_final.png)
![Alt text](Figures/2.2_Rep_6_Rep_10_final.png)

<sub> **Figure 2**: Growth curves of chosen replicates of ancestral and evolved cells.
Cellular fitness, as measured by growth curves on minimal media, of &Delta;mutS strain did not change significantly after evolution. Moreover, some Evo&Delta;mutS replicates exhibited a higher growth rate than Anc&Delta;mutS cells, to a point where the growth of WT and the Evo$\Delta$mutS replicates were indistinguishable. <sub>

### Mutation analysis of evolved strains

![Alt text](Figures/3_271022_new_new_muts_all_fis_combined_final.png)

<sub> **Figure 3**: Mutation analysis of Evo$\Delta$mutS replicates after ALE experiment
**(A)** Comparing mutated genes obtained in our ALE experiment (stagnating cells) and in experiment involving rapidly growing &Delta;mutS cells. Out of the 401 mutated genes the Evo&Delta;mutS strain accumulated during stagnation, 103 genes were also mutated in rapidly dividing &Delta;mutS cells. Yet, statistical analysis shows that this gene intersection is not statistically significant, implying that the mutated genes obtained in the Evo&Delta;mutS strain are associated with survival under stagnating conditions. **(B)** 36 convergent genes mutated in multiple parallel replicates in Evo$\Delta$mutS strain, grouped by the number of occurrences of each mutated gene. **(C)** Description of some of the cellular functions the convergent mutated genes are involved in. 9 mutated genes are associated with metabolism _P value_ = $7.77 &times; 10^-3^$), 4 genes are linked to DNA repair and replication _P value_ = $`1.6 &times; 10^-5^`$), 5 genes are related to protein transport _P value_ = $`1.5  &times; 10^-2^`$), 4 genes are involved in response to antibiotics _P value_ = $`4.3 &times; 10^-7^`$), and 14 genes are uncharacterized.

 <sub>
