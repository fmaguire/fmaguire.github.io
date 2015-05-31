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

- [Philip Klein's (Brown) "Coding the Matrix"](https://www.coursera.org/course/matrix) *
- [Andrew Ng's (Stanford) "Machine Learning"](https://class.coursera.org/ml-005/lecture/preview) *
- [Yaser Abu-Mostafa's (Caltech) "Learning from Data"](https://work.caltech.edu/telecourse.html)
- [Sriram Sankaranarayanan & Shalom D. Ruben's (UCBoulder) "Linear and Integer Programming"](https://www.coursera.org/course/linearprogramming)
- [Daphne Koller's (Standford) "Probabilistic Graphical Models"](https://www.coursera.org/course/pgm)

## Textbooks

![](assets/presentation/GIML/books.png)

- Christopher Bishop's "Pattern Recognition and Machine Learning"
- Kevin Murphy's "Machine Learning: A Probabilistic Perspective"
- Gilbert Strang's "Linear Algebra and Its Applications"

## Practice

![](assets/presentation/GIML/kaggle.png)

- Provided Dataset
- Evaluation Metric
- Public-Private scoreboards

## Warning

![Kaggle can and will eat your time](assets/presentation/GIML/hspunchcard.png)


# Projects 

# parKour 

--- 

![Metatranscriptome GC %](assets/presentation/GIML/gc.png)
- 400M 150bp PE reads (159GB)

---

- Expectation-Maximisation of GMM
- K-means clustering
- Python (SKLearn) still hadn't finished PARSING input after 168 hours
- C++ (MLPACK/ARMADILLO): 12 hours (6GB of memory) single threaded

# Hail-Seizure

---

![American Epilepsy Society Seizure Prediction Challenge](assets/presentation/GIML/hs_dog.png)

- $25,000
- 504 teams
- AUC ROC curve 

---

![iEEGs](assets/presentation/GIML/eeg.png)

--- 

![](assets/presentation/GIML/hsflow.svg)

--- 

- Data preprocessing: downsampling, cleaning
- Channel correlations: independent component analysis, common spatial patterns, MVARs
- Approximately 850 different features 
- Recursive Feature Elimination

--- 

## ML approaches

- Random forests 
- Support Vector Machines 
- Logistic Regression
- Adaboost
- Ensembles!

---

## Performance

- Top 5% (16/504)
- Reasonable accurate prediction - 0.77014 AUC 
- Team: Gavin Gray and Scott Lowe


# Dendrogenous

---

![_Paramecium bursaria_ with _Micractinium reisseri_ endosymbiont](assets/presentation/GIML/pbmr.jpg)

---

- Metatranscriptome origin classification
- Goal: classify transcripts into origin species

![Phylogenetics vs top BLAST hits](assets/presentation/GIML/binning.png)

---

- Features: Phylogenetic tree and sequence features (GC, trinucleotide) 
- SVM/RVM 
- F1 Score nearly as good as manual

# NeuKrill-Net

---

![Image classification of plankton](assets/presentation/NDSB/raw_data.png)


# Eyes-Have-It

---

![Diabetes retinopathy](assets/presentation/GIML/retina.jpg)


- Same approach as NeuKrill-Net
- Difficult cost function

# Spearseq

---

- _de novo_ assembly parameter optimisation (k-mer size, minimum coverage, normalisation)
- Bayesian optimisation of assembly likelihood 
- Spearmint experimentation evaluated using RSEM-eval
- Key challenges i.e. representative subset, generalising for assemblers

# Awedify

---

- Short-form spoken word recommender system
- Goal: Recommender system for audioclips
- Hare brained startup
- Audiotranscription and metadata (project Gutenberg)
- Very much a work in progress
- RNN and LSTM are really cool

# Things I wish I had known or understood earlier!

---

## Plot everything 

- Exploratory data analysis 
- Plot density, scatter, structure of data

---


![t-SNE of EEG features](assets/presentation/GIML/tsne_class.png)

---

## No Free Lunch

- "any two [...] algorithms are equivalent when their performance is averaged across all possible problems"
- No universally best optimiser, classifier, or metric
- Wolpert and McCreedy proofs
- Real world not so nicely random 

---

## Curse of dimensionality

![from Bengio's [homepage](http://www.iro.umontreal.ca/~bengioy/yoshua_en/research.html)](assets/presentation/GIML/bengio_dim.jpg)

- Intuitions will fail in high dimensions

--- 

![Blessing of non-uniformity (from [SKLearn Documentation](http://scikit-learn.org/stable/auto_examples/manifold/plot_compare_methods.html))](assets/presentation/GIML/manifold.png)
 
---

## Highly iterative process 

- Most of the work is the boring stuff
- Data exploration
- Data gathering
- Data cleaning
- More data often beats smarter algorithms

--- 

- Worth taking time setting up tools and data
- *UNIT TESTS*
- Literate programming e.g. Rmd, Jupyter
- Version control e.g. git

## If in doubt combine models!

- Bagging
- Stacking
- Boosting
- Merging

# Conclusion 

---

- Machine learning can be used to do cool things
- It is not as opaque as it appears
- Optimisation and Evaluation is as important as ML algorithm
- Highly iterative process
- Use version control and literate programming
