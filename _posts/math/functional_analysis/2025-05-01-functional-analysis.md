---
layout: post-math
title: Notes on Functional Analysis
date: 2025-05-25
last_modified_at: 2025-06-05
category: math
tag: functional, analysis
---

**Objects**: 
- vector space 
- other spaces: euclidean spaces, sequence space, function space, sobolev spaces
- considers the space of all continuous functions on a given interval, treating this collection itself as a point in a more abstract, infinite-dimensional space, which allows for the application of geometric and algebraic tools
- by reformulating questions from diverse areas - such as differential equations, integral equations, or quantum mechanics - into a common abstract language of spaces and operators, theorems proven in a general setting become applicable across many specific instances. 
    - this abstraction is not merely for elegance, but is a potent tool for generalization and revealing underlying structural similarities between disparate phenomena. 

**Maps/functions**: 
- linear functions/operator $T$ 
  - a fundamental result in functional analysis is that for a linear operator $T: X \rightarrow Y$ between normed spaces, continuity is equivalent to boundedness.
    - This means $T$ is continuous if and only if it is continuous at any single point (e.g., the origin), which in turn is equivalent to $T$ being bounded. This equivalence is immensely useful because boundedness, an algebraic/geometric condition related to how much an operator can "stretch" vectors, is often easier to verify than continuity, a topological condition involving limits of sequences. This bridge between algebraic and topological properties is essential for applying analytical tools to operators in infinite-dimensional spaces, where linearity alone does not guarantee continuity (unlike in finite dimensions).
- several classes of operators 
  - compact operator
  - self-adjoint operators
  - unitary operators 
  - projection operators 




topological concepts is not a mere augmentation of linear algebra for infinite dimensions; it is fundamental necessity.
  - in infinite-dim vector spaces, many topological properties are automatic or trivial
      - all norms are equivalent
      - all linear transformations are continuous 
    - however, the choice of topology becomes critical in infinite-dims
    - algebraic notions alone are often insufficient to capture the nuances of infinite-dim spaces
    - topology provides the essential language for defining convergence of sequences of functions (vital for approximation methods), continuity of operators (such as differentiation or integration)


Relation to linear algebra and real analysis
- linear algebra
- real analysis
- role of topology



Building blocks of mathematical theories are axioms, definitions, and theorems. these revolves around the mathematical object of interest and the different mapping defined. 
- Four pillars: the theoretical framework of analysis is supported by several theorems that reveal deep structural properties of Banach spaces and the linear operators between them. 
    1. Hahn-Banach theorem 
    2. Uniform boundedness Principle 
    3. Open Mapping Theorem
    4. Closed Graph Theorem


The Open Mapping Theorem, Closed Graph Theorem, and Uniform Boundedness Principle are deeply interconnected. Their proofs often rely on the Baire Category Theorem, a result about the topological structure of complete metric spaces. This highlights the profound importance of the completeness axiom (the defining feature of Banach spaces) in establishing these powerful results in infinite-dimensional linear analysis. 




**Solving Partial Differential Equations (PDEs)**: The Role of Sobolev Spaces 
- Functional analysis has revolutionized the study of partial differential equations, particularly through the introduction of weak solutions and the development of Sobolev spaces. 
  - solutions to PDEs were sought among functions possessing a certain number of continuous derivatives (classical solutions). 
  - many PDEs arising from physical models may not have such smooth solutions, or their existence might be very difficult to establish. 
  - Functional analysis provides a framework for weak solutions, which are required to satisfy the PDE only in an integral sense when tested against a suitable class of "test functions".
  - natural setting for studying these weak solutions is provided by Sobolev spaces, typically denoted $H^s(\Omega)$ or $W^{s,p}(\Omega)$.
    - These are function spaces consisting of functions defined on a domain $\Omega \in  \mathcal{R}^n$ whose generalized (or weak) derivatives up to a certain order $s$ possess specific integrability properties, usually being in $L^p(\Omega)$.
    - Sobolev spaces are typically Banach spaces, and if $p=2$ (as in $H^s$), they are Hilbert spaces - they are described as "lying at the heart of the modern theory of PDEs" because they provide the precise functional analytic framework needed to ensure that the terms in the weak formulation of a PDE are well-defined. 