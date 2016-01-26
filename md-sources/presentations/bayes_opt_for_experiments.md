% Efficient Experimental Design
% Finlay Maguire 
% root@finlaymagui.re

## Overview

- Experiments as parameter optimisation problems
- Specific examples
- Bayesian Optimisation
- Step-through of SpearSeq
- Conclusions

#Parameter Optimisation Problems in Biology

----

![](../assets/presentation/bayesopt/experiment_bbox.png)

----

##In the lab

- Codon optimisation
- PCR conditions
- Protein purification 
- Chemical synthesis (reagent ratios/conditions/catalysts)
- Brewing
- Synthetic biology

----

##Computational problems

- Finding the optimal assembly (according to some metric)
- Training detection algorithms e.g. motifs, genes etc.
- Optimising clustering methods 
- Really any non-convex optimisation problem

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

![Prior is random draws from a process (GP)](../assets/presentation/bayesopt/draws_from_gp.png)

----


![Add your data](../assets/presentation/bayesopt/likelihood.png)

----

![Calculate the posterior](../assets/presentation/bayesopt/posterior.png)

----

![](../assets/presentation/bayesopt/posterior2.png)


#Step through of optimisation

----


![GP Prior](../assets/presentation/bayesopt/prior.png)

----

![Choose 3 Random Initial Values](../assets/presentation/bayesopt/initial_random.png)

----


![](../assets/presentation/bayesopt/initial_random.png)

![Use Acquisition Function to select next point](../assets/presentation/bayesopt/acquisiton_function.png)

----

![Tradeoff between exploration and exploitation for a different model](../assets/presentation/bayesopt/acquistion_function2.png)

----

![Update the GP fit, then select another point using Acquisition function](../assets/presentation/bayesopt/opt1.png)

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

![Until you are happy or have used your evaluation budget](../assets/presentation/bayesopt/opt7.png)

----


# Results

----

- SpearSeq found the optimal (assembly parameters) for a test assembly in 4-5 trials even with simple priors and untuned acquistion functions.
- Bayesian Optimisation of synthetic construct expression found 5' UTR free fold energy and 5' UTR length are the two most importantfeatures in expression of the synthetic gene (Gonzalez, 2015)

# Conclusion

- Never just use a grid search, even a naive random search is better (Bergstra & Bengio, 2012)
- Bayesian Optimisation is a cutting edge method in probabilistic numerics.
- Can be used for more efficient experimental design (saving time and money, and potentially
revealing hidden structure in the data)
- Not limited to a single parameter (or objective)
- Several recent relatively easy to use libraries and implementations  (e.g. GPyOpt, Spearmint)
- Tell me about experimental ideas that you think this might be applied to


