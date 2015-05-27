% Stumbling around the decision boundary
% Finlay Maguire 
% root@finlaymagui.re

# Getting into Machine Learning

# Overview

---

- What is my background
- How I got into ML
- Overview of ways I've used ML
- What I wish I had known earlier

# Who Am I?

---

## Background

- High school "computing" and maths
- Bioscience Undergraduate: insigificant courses and research project
- Finishing Bioinformatics PhD looking 
- So no significant formal training in ML, maths or computer science

# Getting into ML

--- 

## MOOCs!

- Linear algebra Coursera *
- Linear programming Coursera 
- [Quick summary as part of Andrew Ng's course](https://class.coursera.org/ml-005/lecture/preview)
- [Philip Klein's "Coding the Matrix course](https://www.coursera.org/course/matrix)
- Ng Coursera * 
- PGM Coursera
- Caltech edX 

## Textbooks

- Bishop 
- Murphy
- [25 Minute Summary by Patrick van der Smagt](https://youtu.be/ZumgfOei0Ak)
- [Gilbert Strang's textbook](http://www.amazon.com/dp/0980232716?tag=inspiredalgor-20)



## Practice

- Kaggle
![Punchcard of code submissions](assets/presentation/NDSB/punchcard.png)


- Research
- Fun


# Projects 

----

## parKour 

- Read partioning
- Goal: partition paired HiSeq reads 
- Research
- K-means clustering
- Speed was key (plot of runtimes in C++, Python, R)
- How did it do?

## Hail-Seizure

- Seizure prediction
- Goal: classifying iEEGs into pre-seizure or normal brain activity
- Kaggle
- Random forest and SVM ensemble
- Signal analysis features 
- Top 5%

## Dendrogenous

- Metatranscriptome origin classification
- Goal: classify transcripts into origin species
- Research
- Phylogenetics and sequence features 
- SVM/RVM 
- Good enough for a chapter...
- Nearly as good as manual

## NeuKrill-Net

- Image classification of plankton
- Goal: identify plankton labels from images
- Kaggle
- dCNN
- More on this tomorrow

## Eyes-Have-It

- Predict diabetes 
- Goal: predict diabetes from eye scan
- Basically same network
- Cost function was difficult

## Prioryprior

Transcriptome assembly parameter ptimisation

- Goal: find the best parameters to generate an assembly
- Bayesian optimisation (spearmint) 
- Assemble (trinity)
- Evaluation (DETONATE)

## Awedify

- Short-form spoken word recommender system
- Goal: Recommender system for audioclips
- Hare brained startup
- Autotranscription
- Work in progress
- RNN and LSTM are fucking cool (see karpathy post!)



# Things I wish I had known earlier!

---- 

- Most of the work is the boring stuff
- [scikit-learn's documentation is great](http://scikit-learn.org/stable/)
- BLAS/LAPACK CUDA 
- Exploratory data analysis - plot, density, scatter, t-sne structure
- Literate programming and version control 
- No Free Lunch
- Curse of dimensionality 
- Ensembles are amazing
- Basic probability (dists and real-world usages) 
- Linear algebra will help you doing
- Optimisation - calculus 


- Intuitions will fail in high dimensions - curse of dimenstionality = blessing of uniformity most things are actually around ld manifold (e.g. MNIST dimensions
- Assumptions are for real statisticians -
- Overfitting with cross-validation
- Be careful not to just focus on algorithm - data, cost function/score metric and optimisation method are equally important
