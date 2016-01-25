% Bayesian Optimisation for Experimental Design
% Finlay Maguire 
% root@finlaymagui.re

# Bayesian Optimisation

# Overview

---

- Parameter optimisation problems
- Gaussian Processes Background
- Bayesian Optimisation
- SpearSeq
- Recombinant gene expression

# Parameter Optimisation Problems in Biology

---

## Molecular 

- Codon optimisation
- PCR conditions
- Protein purification (IPTG etc
- Chemical synthesis (reagent ratios/conditions/catalysts)
- Optimising brewing

## Bioinformatics

- Finding the optimal assembly (according to some metric)
- Training detection algorithms e.g. motifs, genes etc.
- Optimising clustering methods 
- Basically, anything with hyperparameters 

## Main example problems

- Given a protein of interest, which sequence will maximise expression? (e.g. $900nt = 300$ codons $\therefore \approx 2^{300}$ possible sequences)
- Given a set of sequencing data, which preprocessing/assembly parameters will produce the most likely assembly? 


# Bayesia Optimisation

- Ultimately you want to find a function of paramters that optimise a specific value.
- Therefore, you can choose a prior over the space of possible functions.
- Based on the likelihood of the observations you have you can update this prior
- Combine the prior with thezse likelihood to genreate ythe posterior
- Then use an acquisiton functipon that optimise the tradeoff between exploration
and exploitation of high variance and low valuation space.
- Different AQ can make quite a big difference.  

- Until your evaluation budget is expired or result good enough repeat:
- Combine prior and the likelihood to get a posterior given some of the observatiosn 
- Use the posterior to decide where to take tyhe next evaluation accoroding to your acquisition function 
- Augment the data



# What is a Gaussian Process?

- Stochastic processes are generalisation of probability distributions
- They describe the actions of functions rather than a set of random variables
- A

# Acquisition functions

- What does spearmint use either expected improvement (EI), UCB or random.
- What are the differences between these algorithms - faster and slower 
- Random search is empricially more efficient than a gridsearch but generally
slower than a good function that combines exploitation of areas of low variance
 in the posterior with the exploration of high variance subspaces within the 
 unsampled areas of the posterior.
 - SO how does UCB work??
 - Definitely need to add some figures that explain the differences between
 these proceeses.
- What does the
- How do we optimise trh w acquistion functions that best allow exploitation and exploration tradeoff




# UCB

- Gaussian Upper Confidence Bound - exploting lower condifernce bounds (or rather upper when focussing on maximisation
of the boject function). to construction AQ which minisise regret ofver th4e course of their optimisation.







