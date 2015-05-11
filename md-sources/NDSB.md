% Casting a Deep Net: Classifying Plankton from Images
% Finlay Maguire
% root@finlaymagui.re

#Overview

- What?
- Why?
- Input data?
- Solutions?

#What?

----

![](assets/presentation/NDSB/NDSB.png)

- 90 days (December 15th 2014 - March 16th 2015) 
- Sponsored by Booz Allen Hamilton
- Run by Kaggle 
- Hatfield Marine Science Center

----

![](assets/presentation/NDSB/isiis.jpg)

- In Situ Ichthyoplankton Imaging System
- 5 million shadowgraph images (4-5TB) a day 
- Automatically segmented
- Manual analysis infeasible 

----

## Goal

- Reliable automated identification of plankton
- 121 provided labels 
- Generate probability distribution for each image across labels

----

![](assets/presentation/NDSB/prob_dist.png)

----

![](assets/presentation/NDSB/prob_dist_2.png)


----

## Evaluation

- multi-class logloss (cross-entropy loss or negative loglikelihood)

$logloss = -\frac{1}{N} \sum{N}{i=1}\sum{M}{j=1}y_{ij} log(p_{ij}$

N is size of test set (20,000), M is number of class labels (121), $y_{ij}$ is 
1 if observation $i$ is in class $j$ and 0 otherwise. $p_{ij}$ is our
predicted probability that $i$ belongs to $j$

---- 

- Sensitive to overconfidence
- Differentiable
- Not the same as accuracy
- 30:70 public:private test data split

# Why?

----

- Monitoring oceanic conditions is vital
- Democratisation of results
- Potentially helpful for other similar challenges

----

## Other reasons

- Practice
- Cutting edge
- Fun
- Instant feedback
- ...$100,000 1st Place Prize


# Input Data

----

![](assets/presentation/NDSB/raw_data.png)

----

- 30,336 labelled
- 20,000 unlabelled
- 121 classes
- 84-95% self-consistency in labelling \[Culverhouse, 2003\] (Dinoflagellates)
- Scale invariant

----

![Variable input size](assets/presentation/NDSB/image_sizes.png)

----

![Unbalanced classes](assets/presentation/NDSB/label_card.png)

----

![Unbalanced classes](assets/presentation/NDSB/low_card.png)

----

![Classes very similar](assets/presentation/NDSB/try_yourelf.png)

----

![Hierarchy of labels](assets/presentation/NDSB/raw_hierarchy.png)

# Our solution

- Convoluted Neural Networks e.g. ImageNet
- Classical Computer Vision e.g. BugID
- Combine results

#Classical Computer Vision

- Visual feature extraction
PLOT OF EXAMPLES

# So what are Convnets?

---- 

![Artificial Neural Network](assets/presentation/NDSB/ann.png)

----

![Deep Neural Network](assets/presentation/NDSB/DNN.png)

----

![Convolutional Deep Neural Network](assets/presentation/NDSB/conv.jpg)

----

![Our architecture](assets/presentation/NDSB/arch.png)

----

![Activation](assets/presentation/NDSB/activation.png)


# Computer-vision by itself performance 

- 
- Better with global rather than localfeatures
- Hiearchial label data made no difference
- Worse than even simplest convnet


# Computer-vision feature integration

- Integrated augmented CV-features with convnet
- Added into network after convolutions
- Decreased performance



#Getting more data!

![Affine transformations](assets/presentation/NDSB/augmentation.png)

----

## How to take down a server

- Offline augmentation uses a LOT of memory
- More than we had as it turns out
- Our code doesn't fail politely
- Not being nice: misconfigured priorities on cluster


# Hierarchial modelling

----

![Label schema](assets/presentation/NDSB/hierarchy.png)

----

![Left: Original Hiearchy, Right: New Layers](assets/presentation/NDSB/trees.png)

----

- Supplied to six parallel softmax output layers
- Improved initial learning rate 
- Logloss performance was unchanged

# If in doubt merge!

- Weighted average of models almost always perform better



# How did we do?

![](assets/presentation/NDSB/results.png)

- 57/1,054 teams (5.4%)
- Our LL and PPV = 0.704, 74.38%
- Winner LL and PPV = 0.565, 81.52%
- Very similar methodologies 

----

## So what did the winners do?

![](assets/presentation/NDSB/a.png)

- Everything we did but better!
- More convolution layers with smaller kernels
- Simultaneous cyclic pooling 
- Leaky rectified linear units

# Conclusions

- Convnets are amazing and possibly black magic
- Unit testing will save your ass
- Learning to use the tools like pylearn2 is non-trivial
- Experimentation is key 

# Acknowledgements

## University of Edinburgh Neuroinformatics DTC

- Gavin Gray 
- Scott Lowe
- Alina Selega
- Matt Graham
- Dragos Stanciu 

# Citations

- PF Culverhouse, Williams R, Reguera B, Herry V, González-Gil S. (2003) "Do experts make mistakes? A comparison of human and machine identification of dinoflagellates." Mar. Ecol. Prog. Ser. 247:17-25.
