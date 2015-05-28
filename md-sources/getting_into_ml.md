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

![Kaggle](assets/presentation/GIML/kaggle.png)

- Provided Dataset
- Evaluation Metric
- Public-Private scoreboards

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

- Data preprocessing: downsampling, cleaning
- Channel correlations: Independent component analysis, common spatial patterns, MVARs
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

![Phylogenetics vs top BLAST hits](assets/presentation/GIML/phy_vs_blast.png)

---

- Features: Phylogenetic tree and sequence features (GC, trinucleotide) 
- SVM/RVM 
- F1 Score nearly as good as manual

# NeuKrill-Net

---

- Image classification of plankton
- Goal: identify plankton labels from images
- Kaggle
- dCNN
- More on this tomorrow

# Eyes-Have-It

---

- Diabetes retinopathy
- Goal: predict diabetes from eye scan
- Basically same network
- Cost function was difficult

# 

Transcriptome assembly parameter ptimisation

- Goal: find the best parameters to generate an assembly
- Bayesian optimisation (spearmint) 
- Assemble (trinity)
- Evaluation (DETONATE)

# Awedify

- Short-form spoken word recommender system
- Goal: Recommender system for audioclips
- Hare brained startup
- Autotranscription
- Work in progress
- RNN and LSTM are fucking cool (see karpathy post!)

# Things I wish I had known or understood earlier!

---

## Plot everything 

- Exploratory data analysis - plot, density, scatter, t-sne structure
- Literate programming and version control 

---

## No Free Lunch

- No universally best optimiser, classifier, or metric
- Cost function/metric
- Optimisation

---

## Curse of dimensionality

- Intuititons will fail in high dimensions

---

## Always new and exciting ways to overfit

- Enought tests and you can overfit cross-validation

---

## Ensembles are amazing

- Boosting
- Merging

---

## Distribution of work

- Most of the work is the boring stuff
- Data gathering
- Data cleaning
- Setting up tools and data
- *UNIT TESTS*
