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

##Computational problems

- Finding the optimal assembly (according to some metric)
- Training detection algorithms e.g. motifs, genes etc.
- Optimising clustering methods 

----

##Specific examples

- Given a protein of interest, which sequence will maximise expression? (e.g. $900nt = 300$ codons $\approx 2^{300}$ possible sequences)
- Given a set of sequencing data, which preprocessing/assembly parameters will produce the most likely assembly? 


#Naive experimental design (Grid Search)

----


![](../assets/presentation/bayesopt/target_function.png)

----

![](../assets/presentation/bayesopt/naive_experiment0.png)

----

![](../assets/presentation/bayesopt/naive_experiment1.png)

----

![](../assets/presentation/bayesopt/naive_experiment2.png)

----

![](../assets/presentation/bayesopt/naive_experiment3.png)


#So how would you more efficient choose your datapoints?

---- 

## Probabilistically!

![](../assets/presentation/bayesopt/GP_draws.png)

----

![](../assets/presentation/bayesopt/initial_random.png)

----

![](../assets/presentation/bayesopt/acquisiton_function.png)

----

![](../assets/presentation/bayesopt/acquistion_function2.png)

----

![](../assets/presentation/bayesopt/initial_random.png)
![](../assets/presentation/bayesopt/acquistion_function.png)

----
![](../assets/presentation/bayesopt/opt1.png)

----

![](../assets/presentation/bayesopt/opt2.png)

----
![](../assets/presentation/bayesopt/opt3.png)

----
![](../assets/presentation/bayesopt/opt4.png)

----
![](../assets/presentation/bayesopt/opt5.png)

----

![](../assets/presentation/bayesopt/opt6.png)

----

![](../assets/presentation/bayesopt/opt7.png)


