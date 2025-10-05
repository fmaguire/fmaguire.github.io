% Casting a Deep Net: Classifying Plankton from Images
% Finlay Maguire
% root@finlaymagui.re

##Overview

- What?
- Why?
- Input data?
- Solutions?
- Performance?

#What?

----

![](../assets/presentation/NDSB/NDSB.png)

- 90 days (December 15th 2014 - March 16th 2015) 
- Sponsored by Booz Allen Hamilton
- Run by Kaggle 
- Hatfield Marine Science Center

----

![](../assets/presentation/NDSB/isiis.jpg)

- In Situ Ichthyoplankton Imaging System
- 5 million shadowgraph images (4-5TB) a day 
- Automatically segmented
- Manual analysis infeasible 

----

![Goal](../assets/presentation/NDSB/prob_dist.png)

- Reliable automated identification of plankton
- 121 provided labels 
- Generate probability distribution for each image across labels

----

## Evaluation

- multi-class logloss (cross-entropy loss or negative loglikelihood)

$$logloss = -\frac{1}{N} \sum_{i=1}^{N}\sum_{j=1}^{M}y_{ij} log(p_{ij})$$

- N is size of test set (20,000) 
- M is number of class labels (121)
- $y_{ij}$ is 1 if observation $i$ is in class $j$ and 0 otherwise. 
- $p_{ij}$ is our predicted probability that $i$ belongs to $j$

---- 

## Evaluation

- Sensitive to overconfidence
- Differentiable
- Not the same as accuracy ($\frac{TP + TN}{TP + TN + FP + FN}$)
- 30:70 public:private test data split

# Why?

----

## Important problem

- Ecological indicator of oceanic conditions
- Ecosystem functions
- Fishery monitoring 
- Allows autonomous remote monitoring

----

## Learning opportunity

- Machine learning practice
- Collaborative coding practice
- Playing with latest techniques
- Fun
- Instant feedback without data cleaning and gathering
- ...$100,000 1st Place Prize

# Input Data

----

![](../assets/presentation/NDSB/raw_data.png)

----

- 30,336 labelled
- 20,000 unlabelled
- 121 classes
- 84-95% self-consistency in labelling \[Culverhouse, 2003\] (Dinoflagellates)
- Scale invariant

----

![Variable input size](../assets/presentation/NDSB/image_sizes.png)

----

![Unbalanced classes](../assets/presentation/NDSB/label_card.png)

----

![Unbalanced classes](../assets/presentation/NDSB/low_card.png)

----

![Classes very similar](../assets/presentation/NDSB/try_yourelf.png)

----

![Hierarchy of labels](../assets/presentation/NDSB/raw_hierarchy.png)


# Making the most of this data

---- 

## Rescaling 

- Constant size
- Makes life a lot easier
- Makes training more stable
- Lose detail (siamese network)
- Lose sizing information (scale invariance)

----

![Get more data!](../assets/presentation/NDSB/augmentation.png)

----

## Hierarchial modelling

----

![Label schema](../assets/presentation/NDSB/raw_hierarchy.png)

----

![Left: Original Hiearchy, Right: New Layers](../assets/presentation/NDSB/trees.png)

----

- 6 parallel softmax output layers
- Improved initial learning rate 
- Logloss performance was unchanged

# Our Model

----

- Two approaches
- Classical Computer Vision e.g. BugID
- Convoluted Neural Networks e.g. ImageNet
- Combine best of all worlds 

## Classical Computer Vision

- More similar to classifiers explained
- Apply specific functions to detect local features
- General global image characteristics 
- Fit standard classifier RF, SVM, LR 

----
 

![Convolution](../assets/presentation/NDSB/conv.jpg)

----

![Convolution kernels](../assets/presentation/NDSB/convolution.png)

----

##Computer Vision Performance

- Better with global rather than local features
- Hiearchial label data made no difference
- Slow, painstaking, manual
- Worse than even simplest convnet

# So what are Convnets?

----

![Artificial Neuron (from wikimedia)](../assets/presentation/NDSB/perceptron.png)

---- 

![Artificial Neural Network (from wikimedia)](../assets/presentation/NDSB/ann.png)

----

![Deep Neural Network (from neuralnetworksanddeeplearning.com)](../assets/presentation/NDSB/DNN.png)

----

![Convolutional Deep Neural Network: LeNet (from DeepLearning.net)](../assets/presentation/NDSB/mylenet.png)

----

![Our architecture](../assets/presentation/NDSB/arch.png)

----

![Activation](../assets/presentation/NDSB/full_active.png)


# Combining approaches

----

- Integrated augmented CV-features with convnet
- Added into network after convolutions
- Decreased performance
- Model averaging

# How did we do?

----

![](../assets/presentation/NDSB/leader.png)

- 57/1,054 teams (5.4%)
- Our LL and PPV = 0.704, 74.38%
- Winner LL and PPV = 0.565, 81.52%
- Very similar methodologies 

----

## So what did the winners do differently?

- Everything we did but better!
- More convolution layers with smaller kernels
- Simultaneous cyclic pooling 
- Leaky rectified linear units

----

![Cyclic pooling](../assets/presentation/NDSB/cyclicpool.png)

# Conclusions

----

- Convnets are very powerful
- However: implementation is non-trivial 
- Experiment with parameters individually
- Unit testing your code is incredibly useful

----

## Acknowledgements

_University of Edinburgh Neuroinformatics DTC:_

- Gavin Gray 
- Scott Lowe
- Alina Selega
- Matt Graham
- Dragos Stanciu 

----

## Citations

- PF Culverhouse, Williams R, Reguera B, Herry V, González-Gil S. (2003) "Do experts make mistakes? A comparison of human and machine identification of dinoflagellates." Mar. Ecol. Prog. Ser. 247:17-25.
