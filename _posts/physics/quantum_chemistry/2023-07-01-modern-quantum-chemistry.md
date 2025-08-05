---
layout: post-physics
title: Notes on Modern Quantum Chemistry
date: 2025-06-08
last_modified_at: 2025-06-08
category: physics
tag: e.g. fortran, notes
---
Title: *Modern Quantum Chemistry: Introduction to Advanced Electronic Structure Theory* <br>
Author: Attila Szabo and Neil S. Ostlund (1982)

# Table of Content
- [Table of Content](#table-of-content)
  - [Computational Notes](#computational-notes)
  - [First Part: Quantum Mechanical Framework for Molecular Systems](#first-part-quantum-mechanical-framework-for-molecular-systems)
    - [**chapter 1:** Essential Mathematical Tools and Physical Postulates](#chapter-1-essential-mathematical-tools-and-physical-postulates)
    - [**chapter 2:** Constructing Many-electron wavefunctions](#chapter-2-constructing-many-electron-wavefunctions)
    - [**chapter 3:** Hartree-Fock approximation: a foundational mean-field model](#chapter-3-hartree-fock-approximation-a-foundational-mean-field-model)
  - [Second Part: Capturing Electron Correlation](#second-part-capturing-electron-correlation)
    - [**chapter 4:** Configuration Interaction (CI): The Variational Path to Correlation](#chapter-4-configuration-interaction-ci-the-variational-path-to-correlation)
    - [**chapter 5:** Coupled-Cluster (CC) Theory: The Gold Standard of Single-Reference Methods](#chapter-5-coupled-cluster-cc-theory-the-gold-standard-of-single-reference-methods)
    - [**chapter 6:** Many-Body Perturbation Theory (MBPT): A Perturbative Correction](#chapter-6-many-body-perturbation-theory-mbpt-a-perturbative-correction)
  - [**chapter 7:** Many-body Green's function](#chapter-7-many-body-greens-function)


## Computational Notes
- see: [https://github.com/antble/modernquantumchemistry](https://github.com/antble/modernquantumchemistry) 

## First Part: Quantum Mechanical Framework for Molecular Systems 
### **chapter 1:** Essential Mathematical Tools and Physical Postulates

- before tackling many-electron systems, first 2 chapters establishes the fundamental mathematical tools, physical postules, and notational conventions that form the bebdrock of modern quantum chemistry
  - essential mathematical tools and physical postulates
    - toolkit: 
      - linear algebra (matrices, determinants, n-dimensional complex vector spaces, eigenvalue problem)
      - variation method: the energy calculated from any approximation trial wavefunction will always be an upper bound to the true ground state energy 
        - the cornerstone of the Hartree-Fock method and Configuration Interactions 
    - central problem: solving the time-independent Schrodinger equation for a molecule 
      - full molecular Hamiltonian operator, contains terms for the kinetic energy of the electrons, and nuclei as well as the potential energy from electron-nuclear attraction, electron-electron repulsion, and nucleus-nucleus repulsion. 
      - solving this is intractable for all but the simplest systems
    - solution (partial): Born-Oppenheimer approximation
      - based on the vast difference in mass between electrons and nuclei, their motions can be effectively decoupled
      - assumption: the nuclei are fixed in space ("clamped"), allowing for the solution of a purely electronic Schrodinger equation 
      - repeating this calculation for many different nuclear arrangements generates a potential energy surface (PES), which in turn governs the motion of the nuclei (vibration and rotation)

### **chapter 2:** Constructing Many-electron wavefunctions 
- addresses the challenge of how to write down a mathematically acceptable wavefunction for a system with many electrons
  - starting point: Pauli exclusion principle
    - fermions like electrons, manifests as the antisymmetry principle: a many-electron wavefunction, must change sign upon the exchange of the spatial and spin coordinates of any two electrons
    - problem: a simple product of one-electron orbitals, known as Hartree product, fails to satisfy this condition
    - solution: construct the wavefunction as a Slater determinant
      - a mathematical construct, built from a set of one-electron spin-orbitals, that inherently possess the required antisymmetry and is the fundamental building block for nearly all wavefunction-based methods
      - *the book is widely praised for developing a strong intuition for the properties and manipulation of Slater determinants*
  - second quantization formalism: a framework that recasts operator and wavefunctions in terms of creation ($a^\dagger$) and annihilation ($a$) operators
    - it acts on an abstract Fock space to add or remove an electron from a specific spin-orbital, respectively
    - operators for fermions obey specific anticommutation relations
    - this formalism provides a compact and powerful language that greatly simplifies the derivation of complex expressions for matrix elements between determinants
    - it becomes the natural language for describing many-body perturbation theory and coupled-cluster theory
  

### **chapter 3:** Hartree-Fock approximation: a foundational mean-field model
- computational notes: 
  - two-electron SCF fortran code for $HeH^+$ from Appendix B: [twoeSCF.f](https://github.com/antble/modernquantumchemistry/blob/main/twoeSCF.f)
  - python attempts for chapter 3: [chapter 3.5.1, 3.5.2](https://github.com/antble/modernquantumchemistry/blob/main/Modern%20Quantum%20Mechanics%20-%20Szabo%2C%20Attila.ipynb)
- the intellectual core of the book's first half and is widely regarded as one of the most lucid and thorough treatments of the Hartree-Fock (HF) method 
- it is the cornerston of ab initio quantum chemistry
  - serve as the conceptual starting point and computational reference for virtually all more advanced methods
  - derivation and interpretation of the HF equations
    - HF method seeks an approximate solution to the electronic Schrodinger equation by making a pivotal simplifications: it assumes that exact N-electron wavefunction can be well-represented by a single Slater determinant
      - mean-field approximation: each electron is treated as moving independently in an average electrostatic field generated by the other N-1 electrons, rather. than accounting for the instantaneous repulsions between them
    - canonical Hartree-Fock equations: obtained by applying the variational principle—systematically varying the spin-orbitals within the Slater determinant to find the set that minimizes the total energy—one
      - a set of coupled, one-electron eigenvalue problem: 
    \begin{equation}
        f\ket{\chi_a} = \varepsilon_a\ket{\chi_a}
    \end{equation} 
      - $f$ is the Fock operator, which acts as the effective one-electron Hamiltonian for electron $a$. 
      - $f(1) = h(1) + v^{HF}(1)$, 
        - $v^{HF}(1)$ one-electron potential operator (Hatree-Fock potential)
          - encapsulates the average electron-electron repulsion
            - coulomb operator : $\mathscr{J}$, represents the classical electrostatic repulsion between an electron in spin orbital $\chi_a$ and the average charge distribution of all other electrons
            - exchange operator : $\mathcal{H}$, a purely quantum mechanical term with no classical analog, it arises directly from the antisymmetry of the slater determinant and lowers the energy for electrons of parallel spin
        - $h(1)$ is the core-Hamiltonian operator
      - solution to these equations provide a set of optimal spin-orbitals $\chi_a$ and their corresponding orbital energies $\varepsilon_a$
    - Physical significant of these results is illuminated by two key theorems 
      - Koopman's theorem: states that the negative of a canonical HF orbital energy is a reasonable appoximation to the ionization potential for removing an electron from that orbital
      - Brillouin's theorem: shows that the matrix element between the HF ground-state determinant and any singly excited determinant is zero, which has important consequences for Configuration Interaction theory. 
- Roothaan-Hall equations and the SCF procedure
  - Hartree-Fock equations are integro-differential equations, which are computationally challenging to solve for general molecules
    - solution: introduction of a finite set of known, atom-centered basis function $\{\phi_\mu\}$ to represent the unknown molecular orbitals $\{\psi_i\}$, this is the linear combination of atomic orbitals (LCAO) approximation: 
    \begin{equation}
        \psi_i = \sum_{\mu=1}^{K} C_{\mu i} \phi_\mu \quad i=1,2,\cdots, K
    \end{equation}
    - it transforms the difficult equations into a more tractable matrix algebra problem resulting to the Roothan-Hall equations in matrix form:       
    \begin{equation}
        \mathbf{FC} = \mathbf{SC}\mathbf{\varepsilon}\label{eq:roothanhall}
    \end{equation}
    
      - this is a generalized eigenvalue equation
        - $\mathbf{F}$: Fock matrix, the Fock operator in the chosen basis
        - $\mathbf{C}$: the matrix of the molecular orbital coefficients $C_{\mu i}$ that one seeks to find 
        - $\mathbf{S}$: the overlap matrix of the non-orthogonal basis functions
        - $\mathbf{\varepsilon}$: the diagonal matrix of orbital energies
      - critical feature of this equation: non-linearity
        - the Fock matrix depends on the electron density, which in turn depends on the orbital coeffient matrix, the very quantity being sought
    - this necessitates an iterative solution known as Self-Consistent Field (SCF) procedure
      - initial guess of the $\mathbf{C}$ -> a Fock matrix $\mathbf{F}$ is constructed -> Roothan-Hall (equation \ref{eq:roothanhall}) is solve to obtain a new coefficient $\mathbf{C}$ -> a new Fock matrix -> ...
        -  the cycle repeats until the coefficients, electron density, and energy no longer changes between iterations, at which point the solution is deemed "self-consistent" 
- Basis Sets and Open-Shell systems
  - quality of an HF calculation is critically dependent on the set of basis functions used
  - 2 primary types introduced in the book: 
    - Slater-Type orbitals (STOs): have the correct physical form (e.g. cusp at the nucleus) but lead to computationally expensive two-electron integrals
    - Gaussian-Type orbitals (GTOs): less physically accurate but are far more efficient due to the Gaussian Product Theorem - the product of two Gaussian on different centers is another Gaussian
  - Modern quantum chemistry almost universally employs contracted basis sets, where a fixed linear combination of several GTOs is used to approximate the shape of a single STO
    - hierarchy of Pople-style basis sets: 
      -  STO-3G : each STO is mimicked by 3 GTOs
      -  4-31G: split-valence sets 
      -  6-31G: polarized sets, add functions of higher angular momentum to allow for greater flexibility in describing chemical bonds
  - restricted HF method: forces paired electrons to occupy the same spatial orbital 
  - unrestricted HF method 
    - electrons with $\alpha(\uparrow)$ and $\beta(\downarrow)$ are allowed to have different spatial orbitals
      - often inadequate (?)
    - provides a better description for processes like bond dissociation 
      - can lead to a wavefunction that is not a pure spin state, a problem known as spin contamination



## Second Part: Capturing Electron Correlation
- a post-Hartree-Fock methods
- its about sovling the "problem of correlation" 
  - the HF method neglects the instantaneous, correlated motions of electrons 
  - electron correlation energy = (energy of the exact non-relativistic energy) - (energy at the Hartree-Fock limit)
    - recovering this energy is essential for achieving quantitative accuracy 
  - it presents 3 distinct philosophical and mathematical approaches to rectify the central flaw of the HF model:
    - Configuration Interaction
    - Coupled-Cluster Theory
    - Many-Body perturbation 


### **chapter 4:** Configuration Interaction (CI): The Variational Path to Correlation
- essence of CI: express the true wavefunction as a linear combination of many Slater determinants to improve upon the single-determinant HF wavefunction
  - additional determinants: $\\{\Phi_i\\}$, generated by "exciting" one or more electrons from occupied HF orbitals to virtual (unoccupied) orbitals
    - CI wavefunction: 
    \begin{equation}
    |\Psi_{\text{CI}}\rangle = c_0 |\Psi_0\rangle + \sum_{i,a} c_i^a |\Psi_i^a\rangle + \sum_{i < j, a < b} c_{ij}^{ab} |\Psi_{ij}^{ab}\rangle + \dots
    \end{equation}
        - $\Psi_0$ is the HF reference determinant
        - $\Psi_i^a$ is a singly excited determinant
        - $\Psi_{ij}^{ab}$ is a doubly excited determinant
    -  The coefficients $c$ are determined variationally by diagonalizing the Hamiltonian matrix in the basis of these determinants.
 - Full CI calculation includes all possible excitations within a given basis set, provides the exact solution to the electronic Schrodinger equation for that basis
   - problem: the number of determinants grows factorially with the system size, making Full CI computationally prohibitive for all but the smallest molecules
   - solution: expansion must be truncated  
 - CISD, includes all single and double excitations
   - problem: truncated CI are not size-extensive (or size-consistent)
     - the CISD energy of two non-interacting hydrogen molecules is not equal to twice the CISD energy of a single hydrogen molecule
   - solution: alternative methods (e.g. CI)


### **chapter 5:** Coupled-Cluster (CC) Theory: The Gold Standard of Single-Reference Methods 
- it solves elegantly the size-extensivity problem of truncated CI 
- 
- CCSD(T) methd, adds a perturbative correction for triple excitations to the CCSD result, is often called the "golden standard" of single-reference quantum chemistry for its exceptional accuracy 
- 

### **chapter 6:** Many-Body Perturbation Theory (MBPT): A Perturbative Correction
- instead of a variational expansion, Many-Body Perturbation Theory (MBPT) treats electron correlation as a small perturbation to the HF solution. 
  - employs Rayleigh-Schrödinger perturbation theory (RS-PT) to systematically calculate corrections to the HF energy and wavefunction 
  - total Hamiltonian is partitioned such that the unperturbed zeroth-order Hamiltonian is the sum of the Fock operators, whose exact eigenfunction is the HF determinant
    - perturbation is then the difference between the true Coulomb repulsion and the mean-field HF potential. 
- Møller-Plesset theorem: the sum of the zeroth- and first-order energies in this partitioning is exactly the Hartree-Fock energy ($E_{\text{HF}} = E^{(0)} + E^{(1)}$)
  - the first meaningful correction that introduces electron correlation is the second-order energy, $E^{(2)}$
  -  MP2 method is one of the most popular and cost-effective ways to account for electron correlation 
-  Diagrammatic perturbation theory: 
   -  using Goldstone diagrams, the complex algebraic terms in the perturbation expansion can be represented visually, providing powerful physical insight into the interactions being described and greatly simplifying their derivation


## **chapter 7:** Many-body Green's function
One-Particle Many-Body Green's Function method
- a powerful and advanced formalism based on propagators that is particularly well-suited for directly calculating properties like ionization potentials and electron affinities.