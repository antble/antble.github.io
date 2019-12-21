---
layout: post
title: "Quantum Mechanics in Python: Sympy"
date: 2018-02-02
category: physics 
tag: quantum mechanics, computational physics
---

Quantum mechanics are difficult to understand and difficult algebraically. There is a need for software to symbolically simulate quantum mechanical phenomena. To do this, meet Sympy, an open-source computer algebra system capable of modelling the abstraction of Dirac notation and the density operator. A quantum computer simulation has been built using this abstraction. In this post, we will explore some codes that are relevant to physics. 

In particular, we shall focus on the density operator of statistical quantum mechanics using sympy's density matrices as guide. 

- we shall look at how Dirac notation was used to simulate the gate model of quantum computation
- we shall include a discussion of the important physics concepts which come from the study of the density operator, including the discussion of the Von Neumann entropy and how it relates to the Louville Theorem
- we shall look at how the reduced density matrix of a subsystem is calculated and use this knowledge to inform our understanding of quantum decoherence and the "entropy of entanglement" measure of entanglement


### Data Structures in SymPy
- sympy's symbolic engine takes advantage of object orientation (inheritance in particular) to create an extensible code base


### Quantum Mechanics in Sympy
- Sympy has a base module which provides functionality for symbolic quantum mechanics in Dirac notation
   - the code has a notion of ket and bras states, operators which acts on these states, Hilbert spaces to which these states and operators belong, as well as inner and tensor products.

   
