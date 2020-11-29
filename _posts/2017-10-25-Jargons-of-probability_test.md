---
layout: post
title: "The Jargons of Probability Theory"
date: 2017-10-25
category: math 
tag: probability
---

There are some jargons in probability that are worth knowing for they keep recurring in many fields of science.
The idea of a function in relation to a probability is widespread used in complex systems, statistical mechanics, quantum mechanics, electromagnetism, and many more. So it is just logical to learn the jargons of probability so that next time it will not appear as wild beasts.


### Random Variable:
a variable that is subject to variations due to random chance. It is a result of a random experiment, a sampling. 
Since the variable is random you expect to get different values as you obtain multiple samples. 

### Distribution Function:
a function over a general set of values, also called as cumulative distribution function (CDF), or it may be referred to as a probability mass function (PMF). A probability distribution is a function that describes how likely you will obtain the different possible values of the random variable.

### Probability Density Function: 

Density of a continuous random variable, is a function whose value at any given sample (or point) in the sample space (the set of possible values taken by the random variable) can be interpreted as providing a relative likelihood that the value of the random variable would equal that sample. 

PDF is used to specify the probability of the random variable falling within a particular range of values, as opposed to taking on any one value. 

1. Continuous Distribution: <br>
$$ Pr[a \leq X \leq b] = \int_a^b f_{X}(x) dx $$<br>

"What is the probability that X falls between a and b?"

2. Discrete Distribution:<br>
$$  f(t) = \sum p_i \delta (t - x_i) $$

### Entropy:
The entropy of a random variable is a function which attempts to characterize the "unpredictability" of a random variable. Its not about the number of possible outcome, it is also about their frequency. Thought, it sounds like a vague concept, it has a precise mathematical definition.

Take for example a random variable X with values $$ X = \{x_1, x_2, ..., x_n\} $$ and is defined by a probability distribution P(X), the entropy of the random variable is:

$$ H(X) = -\sum P(x) \log P(x) $$


### Conditional Entroppy 
quantifies the amoutn of information needed to describe the outcome of a random variable Y given that the value of another random variable X is known. 


### Joint Entropy:
The entropy of a joint probability distribution, or a multi-valued random variable. Joint entropy is a measure of the uncertainty associated with a set of variables.

The join *Shannon entropy* of two discrete random variables X and Y is defined as

$$H(X,Y) = - \sum_{x} \sum_{y} P(x,y) \log_{2} [P(x,y)]$$

where x and y are particular values from X and Y and P(x,y) is the joint probability of these values occurring together.



### Mutual Information (MI):
MI of two random variables is *a measure of the mutual dependence between the two variables.* Specifically quantifying the information content obtained about one random variable, through the other random variable. Thus it is linked to that of entropy of a random variable.

MI of two discrete random variables X and Y can be defined as:
$$ I(X;Y) = \sum_{y \in Y} \sum_{x \in X} p(x,y) \log \frac{p(x,y)}{p(x)p(y)}$$

MI of two continuous random variables X and Y can be defined as:
$$ I(X;Y) = \int_{Y} \int_{X} p(x,y) \log \frac{p(x,y)}{p(x)p(y)} dxdy$$

Note that if X and Y are independent, $$p(x,y)=p(x)p(y)$$ therefore: 

$$\log \frac{p(x,y)}{p(x)p(y)} = \log(1) = 0$$

MI properties:<br>
a. nonnegative: $$I(X;Y)$$ <br>
b. symmetric: $$I(X;Y)=I(Y;X)$$)=

**Relation to conditional and join entropy**

$$1. I(X;Y) = H(X)-H(X\|Y) $$
$$2. I(X;Y) = H(X,Y)-H(X\|Y)-H(Y\|X) $$ 
$$3. I(X;Y) = H(X)+H(Y)-H(X,Y) $$

$$H(X),H(Y)$$ = marginal entropies <br>
$$H(X\|Y)$$ = conditional entropies <br>
$$H(X,Y)$$ = joint entropies

#### References:
1. https://en.wikipedia.org/wiki/Mutual_information


Last Update: 14/04/2018

