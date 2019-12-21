---
layout: post
title: "Kwant - For Quantum Transport"
date: 2018-04-14
category: physics 
tag: quantum mechanics, computational physics
---


I'm currently exploring the Kwant python package because my thesis is inline with quantum transport. Kwant is a python package for numerical quantum transport calculations. The thing I like about Kwant, aside from being in python, is that it has been designed such that natural concepts of the theory of quantum theory are exposed in a simple and transparent way. Kwant offers direct support for calculations of transport properties, dispersion relations, modes, wave functions, variours Green's functions, and out-of-equilibrium local quantities. 

### 1. Introduction 
**Scattering**
- solving scattering problem is a common taks in condensed matter physics
    - one considers the scattering of particles in a finite system coupled to infinite **leads**
    - solutions yields the conductance and various other transport properties
- can also be used to calculate complicated physical phenomena.
    - supercurrent
    - non-equilibrium density of states at a high voltage bias
    - evaluation of the topological properties of a topological insulator

**Numerical simulation of the scattering problem**
  - most popular is the **recursive Green's function algorithm** (RGF)
  - **Kwant** is develop to solve efficiently at comparatively little effort the scattering problem for arbitrary single-particle tight-binding Hamiltonians.

**Kwant**
- solve the scattering problem in a robust and highly efficient way
- support an easy and expressive way to define a broad range of tight-binding systems as required for exploratory research.
- uses highly efficient and robust algorithms resulting to:
     - it outperform the RGF
     - it avoid usual instabilities occurring with many commonly used algorithms
- Expressiveness of kwant is important for mesoscopic physics 
   - one writes down a Hamiltonian that is very close to what one would write on a blackboard
   - Definition of a physical system amount to writing a simple Python program that operates with physical concepts such as lattices, shapes, symmetries, and potentials.

**Examples of a device that was simulated**
- cylindrical semiconductor wire with *spin-orbit interaction*, partially covered by a superconductor, used to create Majorana fermions.


### 2. Concepts of Quantum Transport
(kwant is suited for both infinite and finite systems with finite scattering region to which a few semi-finite periodic electrodes are connected.)

The Hamiltonian for systems in Kwant are defined as:
$$\hat{H}=\sum_{ij} H_{ij}c^\dagger_{i}c_{j}$$

where $$c^\dagger_{i}c_{j}$$ are the usual fermionic creation(and destruction) operatos, i and j label the different degrees of freedom of the system, and $$H_{ij}$$ are the elements of an infinite Hermitian matrix

### 3. Scattering Theory
### 4. Defining tight-binding systems