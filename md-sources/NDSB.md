% Casting a Deep Net: Classifying Plankton from Images
% Finlay Maguire
% root@finlaymagui.re

#What?

----

- National Data Science Bowl
- Booz Allen Hamilton 
- Kaggle
- Hatfield Marine Science Center @ Oregan State 

#Why?

----

- More useful than an advertising problem
- Practice
- Fun
- ...$100,000 1st Place Prize

#What was the input?

----

![](assets/presentation/NDSB/raw_data.png)

- 30,336 labelled
- 20,000 unlabelled
- 121 classes

----

## Class Labels

![Hierarchy of labels](assets/presentations/NDSB/hierarchy.png)

----

## Difficulties

PLOT OF CARDINALITIES
Many classes

----

PLOT OF IMAGE SIZES
Unbalacned image sizes

----

![Classes very similar](assets/presentation/NDSB/try_yourself.png)


# Our approach

----

Combining:
- Convoluted Neural Networks
- Classical Computer Vision

----

##Convnets

- Neural network to deepnet to convnet

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


# Eat your time

![Punchard of code submissions](assets/presentations/NDSB/punchcard.png)
