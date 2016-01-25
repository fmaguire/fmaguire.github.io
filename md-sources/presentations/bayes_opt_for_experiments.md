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

----

![](../assets/presentation/bayesopt/function_recovered.png)


#So how would you more efficient choose your datapoints?

---- 

## Probabilistically!

----

![Random GP Draws](../assets/presentation/bayesopt/GP_draws.png)

----

![Choose 3 Random Initial Values](../assets/presentation/bayesopt/initial_random.png)

----

![Use something called an AQ function to select](../assets/presentation/bayesopt/acquisiton_function.png)

----

![Pick another point using the AQ and refit GP](../assets/presentation/bayesopt/opt1.png)

----

![Do the same again](../assets/presentation/bayesopt/opt2.png)

----

![And again](../assets/presentation/bayesopt/opt3.png)

----

![And again](../assets/presentation/bayesopt/opt4.png)

----

![For as long as you want](../assets/presentation/bayesopt/opt5.png)

----

![...](../assets/presentation/bayesopt/opt6.png)

----

![Until things are good enough](../assets/presentation/bayesopt/opt7.png)

----

![Another demonstration of AQ function](../assets/presentation/bayesopt/acquistion_function2.png)

