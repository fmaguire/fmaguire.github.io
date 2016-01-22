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

# What is a Gaussian Process?


