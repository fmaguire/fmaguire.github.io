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

![National Data Science Bowl](assets/presentation/NDSB/NDSB.png)
- 90 days (December 15th 2014 - March 16th 2015) 
- Sponsored by Booz Allen Hamilton
- Kaggle platform
- Data from Oregon State University

----

![In Situ Ichthyoplankton Imaging System](assets/presentation/NDSB/isiis.jpg)
- 5 million shadowgraph images (4-5TB) a day 
- Automatically segmented
- Manual analysis of all infeasible 

----

- Automated identification of plankton
- 121 expert provided labels 
- Goal: generate probability distribution for each image
- 1,293 participants 
- 1,049 teams 
- 15,120 submissions

----

## Scoring
- logloss (cross-entropy loss or negative loglikelihood)
- Sensitive to overconfidence
- Differentiable
- Not the same as accuracy
- 30:70 public:private test data split


#Why?

----

- Monitoring oceanic conditions is vital
- Democratisation of results
- Potentially helpful for other similar challenges

----

## Other reasons

- Practice
- Cutting edge
- Fun
- ...$100,000 1st Place Prize

----

#Input Data

----

![](assets/presentation/NDSB/raw_data.png)

- 30,336 labelled
- 20,000 unlabelled
- 121 classes
- 84-95% self-consistency in labelling \[Culverhouse, 2003\] (Dinoflagellates)

----

## Variable input size

![](assets/presentation/NDSB/image_sizes.png)

----

## Unbalanced classes

![](assets/presentation/NDSB/label_card.png)

----

![](assets/presentation/NDSB/low_card.png)

----

![Classes very similar](assets/presentation/NDSB/try_yourself.png)

----

![Hierarchy of labels](assets/presentation/NDSB/raw_hierarchy.png)

# Our solution

Two paths:
- Convoluted Neural Networks e.g. ImageNet
- Classical Computer Vision e.g. BugID

- Combine results

# So what are Convnets?

---- 

## Artificial Neural Network 

![ANN](assets/presentation/NDSB/ann.png)

----

## Deep Neural Network

![DNN](assets/presentation/NDSB/dnn.png)

----

## Convolutional Deep Neural Network 

![Convolution](assets/presentation/NDSB/conv.jpg)

----

## Our CNN architecture

![](assets/presentation/NDSB/arch.png)

----




##Classical Computer Vision

- Visual feature extraction
PLOT OF EXAMPLES

# Getting more data!

![Affine transformations](assets/presentation/NDSB/augmentation.png)
----

## How to take down a server

- Offline augmentation uses a LOT of memory
- More than we had as it turns out
- Our code doesn't fail politely
- Not being nice: misconfigured priorities on cluster


# Our Model


# Combining Convnet and CV

---- 

Doesn't work

# Hierarchial modelling 

----

![Label schema](assets/presentations/NDSB/hierarchy.png)

----

![Left: Original Hiearchy, Right: New Layers](assets/presentations/NDSB/trees.png)

----

- Supplied to six parallel softmax output layers
- Improved initial learning rate but not performance

# Biggest challenges

- Dataset handling
- 


# Conclusions

 


# Eat your time

![Punchard of code submissions](assets/presentations/NDSB/punchcard.png)



# Citations

- PF Culverhouse, Williams R, Reguera B, Herry V, González-Gil S. (2003) "Do experts make mistakes? A comparison of human and machine identification of dinoflagellates." Mar. Ecol. Prog. Ser. 247:17-25.
