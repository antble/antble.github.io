---
layout: post-physics
title: "Notes on Statistical Mechanics: Algorithm and Computations"
date: 2021-04-11
last_modified_at: 2025-08-11
category: physics
tags: [notes]
---
book: Statistical mechanics <br>
author: Werner Krauth

code: []
# Table of Content 
- [Table of Content](#table-of-content)
  - [Monte Carlo Methods](#monte-carlo-methods)
  - [Hard Disks and Spheres](#hard-disks-and-spheres)
  - [Density Matrices](#density-matrices)
  - [The Bose Gas](#the-bose-gas)
  - [Spin Systems](#spin-systems)
  - [Entropic Forces](#entropic-forces)
  - [Dynamic MC Methods](#dynamic-mc-methods)



## Monte Carlo Methods 
- physical concept: markov chains, detailed balance
- we set out to study a host of classical and quantum problems, all of value as models and with numerous applications and generalizations 
- we also discuss the basic principles of statistical data analysis: how to extract results from well-behaved simulations 
- Monte carlos is extremely general, and the basic recipes allow us - in principle - to solve any problem in statistical physics
- in practice, much effort has to be spent in designing algorithms specifically geared to the problem at hand 
- concept of sampling 
    - 2 fundamentally different sampling approaches: direct sampling and 
    - markov-chain sampling: requires Metropolis algorithm 
- Monte Carlo method is a powerful approach for the calculation of integrals
- narrative progresses from naive, brute-force sampling to the intelligent, guided exploration of configuration space that is the hallmark of Markov-chain Monte Carlo (MCMC)
- Fundamental concepts 
  - direct sampling : generating statistically independent configurations from scracth, according to the target probability distribution 
  - markov-chain sampling : generates sequence of correlated configurations, where each new state is a small, stochastic modification of the previous one
    - creates a "random walk" through the system's configuration space 
    - viability of this random walk depends on the rules that guarantee it explores the space correctly
      - cornerstone of these rules is the Metropolis algorithm: 
        - correctness is ensured by the **principle of detailed balance**
        - in equilibrium: $\pi(a) P(a\rightarrow b) = \pi(b) P(b\rightarrow a)$
          - $\pi(x)$ is the equilibrium probability of configuration x 
          - $P(x\rightarrow y)$ is the transition probability
        - this condition is sufficient (though not strictly necessary) to ensure that the Markov chain's stationary distribution is the desired target distribution, such as the Boltzmann distribution $\pi(a) \propto e^{\beta E(a)}$
          - making this concrete: check the 3x3 pebble game
            - it illustrate detailed balance, irreducibility, and periodicity (3 conditions for a markov chain to converge to a unique stationary distribution)
  - Ergodicity: the principle that the Markov chain must be able to reach any physically relevant configuration from any other
  - Central limit theorem: the basis of estimating statistical errors and presents practical methods for handling the correlated data produced by Markov chains
    - bunching methods: to obtain reliable error estimates 
- scientific mindset instilled: output of a computer simulation msut be treated with the same skepticism and subjected to the same rigorous analysis as data from a physical experiment


## Hard Disks and Spheres
- core physical model: hard-sphere fluid 
  - hard disks and spheres is used to bridge between the deterministic, time-evolving world of classical mechanics and the probabilistic, static framework of statistical mechanics
  - it has a crucial role in the historical development of both molecular dynamics and Monte Carlo methods
- physical concept: equiprobability, partition function
- 2 distinct descriptions of the same physical system
  - even-driven molecular dynamics (MD) : deterministic simulation of Newtonian mechanics
    - particles (position, velocities)
  - Boltzmann's statistical mechanics : discards the notion of time and dynamics entirely
    - founded on a single, powerful axiom: principle of equiprobability
      - for an isolated system at constant energy, any two legal configurations are equally likely to be observed 
      - using this statistical framework, core machinery of the displine called partition function $\mathcal{Z}$ is defined
        - the total volume of the allowed configuration space 
      - its concrete, algorithmic meaning: the acceptance rate of a direct-sampling algorithm is directly proportional to the partition function 
- Virial expansion: an analytical method for calculating the system's equation of state at low densities, providing the theoretical benchmark against which simulation results can be tested 
  - constant pressure, volume can fluctuate: $\pi(a) \propto e^{-\beta E(a)}$, where $E = PV$
- hard-disk system is rich enough to exhibit a phase transition
- ergodic hypothesis made concrete
- time-based simulation (molecular dynamics) vs. probabilistic simulation (monte carlo)
  - thermodynamic averaging over a long, deterministic trajectory vs. averaging over a large ensemble of static randomly generated configurations
  - both methods yield the same equation of state is a direct, numerical validation of the ergodic principle of this system
- the inherent chaotic dynamic of hard-sphere systems - where tiny perturbations in initial conditions lead to exponentially diverging trajectories further reinforces why the statistical approach is not only valid but essential for describing the system's macroscopic behaviour 
- algorithm as a scientific instrument
  - different algorithm can be interpreted as scientific probes that reveal fundamental properties of the physical system
    - algorithm as an instrument of investigation not just a tool for calculation 
  - example: failure of the direct-sampling algorithm at high densities
  - "critical slowing down" observed in local Markov-chain Monte Carlo simulations near the freezing transition is a direct computational signature of a physical effect 

## Density Matrices
- core physical model: single quantum particle
- physical concept: feynman path integral  
- thermal density matrix $\rho = e^{-\beta \hat{H}}$
  - quantum analog of the classical Boltzmann factor
    - $\hat{H}$: system's Hamiltonian operator
    - $\beta = 1/k_B T$
- partition function : $Z = Tr(\rho)$, trace of the thermal density matrix 
  - computational challenge: $\hat{T}$ and $\hat{V}$ do not commute, preventing separation of the exponential operator $e^{-\beta(\hat{T}+\hat{V})}$
    - solution: Trotter decomposition (Trotter-Suzuki formula)
      - allows one to approximate the low-temperature density matrix as a product of many high-temperature density matrices
      - this is the getaway to a computational treatment
    - When the Trotter formula is applied within the position-basis representation of the partition function, $Z = \int dx\bra{x} e^{(-\beta\hat{H}\ket{x})}$, a remarkable transformation occurs.

- convolution procedure
 - establishes connection between classical and quantum systems -> basis of the Feynman path integral
 - opens up the field of finite-temperature quantum statistics to computation
    - matrix squaring: we can express the density matrix at low temperature (\beta_1 + \beta_2) as an integral over density matrices at higher temperature (\beta_1, \beta_2) 
    \begin{equation}
        \int dx \rho(x,x',\beta_1) \rho(x',x^{\"},\beta_2)  = \rho(x',x^{\"},\beta_1 + \beta_2) 
    \end{equation}

- quantum partition function rewritten as a sum over classical-like trajectories in "imaginary time" is known as Feynman path integral
      - in this mapping: a single quantum particle is represented as classical "polymer" or "ring" 
        - beads of the polymer corresponds to the particle's position at discrete imaginary time slices 
      - this mapping transforms the quantum simulation problem into a classical one, which can be solved with Monte Carlo Methods
- algorithm for sampling the configuration of these paths 
  -  efficient method: Levy construction
     -  build the path in a hierarchical manner, correctly capturing the statistical properties of the underlying Brownian motion and dramatically improving sampling efficieny

- geometry of paths and related objects 
  - will foster our understanding of quantum physics of the path integral

## The Bose Gas
<blockquote>"what works once is a trick; what works twice is a method." ~ page 188</blockquote>
- core physical model: ideal bosons in a trap
- physical concept: bose-einstein condensation
- building upon the path-integral formalism for a single quantum particle, this chapter ventures into the real of quantum many-body systems 
  - focus: ideal Bose gas, to explore the consequences of quantum indistinguishability
    - reveals an intuitive geometric interpretation of quantum statistics 
    - culminates in a powerful approach to simulating Bose-Einstein condensation
  - challenge: simulating a system of identical bosons implementing the quantum statistical requirement that the total N-particle wave function must be symmetric under the exchange of any two particles.
    - the partition function must include a sum over all $N!$ permutations of the particle labels

## Spin Systems
- core physical model: 2D ising model 
- physical concepts: critical phenomena, phase transitions 

## Entropic Forces
- physical model: colloids, dimers
- physical concepts: depletion interaction, emergent order


## Dynamic MC Methods
- physical model: sphere packing, RSD (?)
- physical concept: optimization, non-equilibrium dynamics
