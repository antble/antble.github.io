---
layout: post-math
title: "Notes on Tensor Calculus"
date: 2021-04-11
last_modified_at: 2025-03-01
category: math
tag: [tensor calculus, notes]
---
**Objects**: Tensors, Tensor Fields 

**Transformations**: Tensor Product, Derivative

---
Tensor calculus, a powerful mathematical framework with far-reaching applications across diverse fields, expands upon the principles of vector calculus to encompass tensors. Tensors, essentially multi-dimensional arrays of numbers, represent a generalization of scalars and vectors. This article delves into the intricacies of tensor calculus, exploring its definition, applications, and the nuances that distinguish it from vector calculus. Notably, the foundations of tensor calculus were laid by Gregorio Ricci-Curbastro in 1887-1896, and its use was further popularized through a collaborative paper with his student Tullio Levi-Civita in 1900.



## Definition of Tensor Calculus
Tensor calculus, also known as Ricci calculus, provides a structured system for representing and manipulating 2 main mathematical objects (1) <mark>tensors </mark> and  (2) <mark>tensor fields</mark> on a differentiable manifold. Tensors, as geometric objects, encapsulate linear relationships between sets of algebraic objects associated with a vector space . These relationships remain consistent irrespective of the coordinate system used to express them.


## 1. Tensors
Tensors are categorized by their rank, which corresponds to the number of indices required to specify their components. Scalars, with no indices, are zeroth-order tensors, while vectors, requiring one index, are first-order tensors. Matrices, needing two indices, are second-order tensors, and this extends to higher orders for more complex relationships .



### 1.1 General Tensors

More technical discussion:
- [Tensors]({% post_url math/tensor_calculus/2025-03-01-tensors %})

### 1.2 Metric Tensors ($g$)
A general formulation of distance is introduced in tensor calculus for non-Euclidean spaces. This generalized metrics is known as the metric tensor, which satisfies some properties: 
- $\mathrm{g}$ is differentiable class $C^2$
- $\mathrm{g}$ is symmetric ($g_{ij} = g_{ji}$)
- $\mathrm{g}$ is nonsingular (\|${g_{ij}}$\| $\neq 0$)

### 1.3 Tensor Operations
#### 1.3.1 Tensor Product
A pivotal concept in tensor calculus is the tensor product, denoted by the symbol $\otimes$. This operation combines vectors and covectors, which are linear functions that map vectors to scalars, to create higher-order tensors . For instance, the tensor product of two vectors results in a second-order tensor.
#### 1.3.2 Tensor Derivative 


### 1.4 Contravariant and Covariant Tensors
Furthermore, tensor calculus distinguishes between contravariant and covariant tensors. These types differ in how their components transform under a change of coordinates. Contravariant tensors, with indices as superscripts, transform inversely to the coordinate change, while covariant tensors, with indices as subscripts, transform in the same direction as the coordinate change .   

Contravariant tensor of order one obeys the following law of transformation: 

$$
\bar{T}^i=T^r \frac{\partial \bar{x}^i}{\partial x^r} \quad(1 \leqq i \leqq n)
$$

While the covariant tensor of order one follows the following law of transformation: 

$$
\bar{T}_i=T_r \frac{\partial x^r}{\partial \bar{x}^i} \quad(1 \leqq i \leqq n)
$$


## 2. Tensor Fields
Central to tensor calculus is the concept of tensor fields, which are collections of tensors defined at every point in space. These fields allow us to describe physical quantities that vary over space, such as the stress within a material or the curvature of spacetime .

t's important to clarify that while the physical or geometric entity represented by a tensor remains unchanged under coordinate transformations, the components of the tensor do undergo transformations. This transformation follows specific rules that ensure the tensor's representation remains consistent across different coordinate systems .

As explained earlier, tensor calculus is closely intertwined with differential geometry, a branch of mathematics that studies the geometry of curves, surfaces, and manifolds. Tensors provide a powerful tool for formalizing the manipulation of geometric entities arising in the study of these mathematical structures . 



## Difference Between Tensor Calculus and Vector Calculus
While both vector calculus and tensor calculus deal with the study of how quantities change over space, tensor calculus represents a significant generalization. Vector calculus primarily focuses on scalar fields, which associate a single number with each point in space, and vector fields, which assign a vector to each point. Tensor calculus, on the other hand, extends this to encompass tensor fields of any order, allowing for the representation of more complex relationships .   

In essence, tensors can be viewed as a generalization of scalars and vectors, providing a unified mathematical framework for representing diverse physical and geometric quantities . Covectors, which are linear functions that map vectors to scalars, also play a crucial role in tensor calculus 


{% include references_tensorcalculus.md %}