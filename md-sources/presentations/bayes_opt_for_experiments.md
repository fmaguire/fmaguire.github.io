% Bayesian Optimisation for Experimental Design
% Finlay Maguire 
% root@finlaymagui.re

## Overview

- Parameter optimisation problems
- SpearSeq
- Recombinant gene expression

#Parameter Optimisation Problems in Biology

----

![](../assets/presentation/bayesopt/experiment_bbox.png)

----

##In the lab

- Codon optimisation
- PCR conditions
- Protein purification (IPTG etc
- Chemical synthesis (reagent ratios/conditions/catalysts)
- Optimising brewing

----

##Computational problem

- Finding the optimal assembly (according to some metric)
- Training detection algorithms e.g. motifs, genes etc.
- Optimising clustering methods 

----

##Specific examples

- Given a protein of interest, which sequence will maximise expression? (e.g. $900nt = 300$ codons $\therefore \approx 2^{300}$ possible sequences)
- Given a set of sequencing data, which preprocessing/assembly parameters will produce the most likely assembly? 

#SpearSeq

![](../assets/presentation/bayesopt/target_function.png)

----

##Naive experimental design (Grid Search)


![](../assets/presentation/bayesopt/target_function.png)

----

![](../assets/presentation/bayesopt/naive_experiment0.png)

----

![](../assets/presentation/bayesopt/naive_experiment1.png)

----

![](../assets/presentation/bayesopt/naive_experiment2.png)

----

![](../assets/presentation/bayesopt/naive_experiment3.png)



