---
layout: post-physics
title: "Fundamentals of Quantum Chemistry"
date: 2023-06-22
last_modified_at: 2025-03-12
category: physics
tag: physics, fundamentals
---


- **Physical system**: consists of atoms and molecules, which are composed of nuclei (protons and neutrons) and electrons. The system is characterized by the interactions between these particles, primarily governed by electromagnetic forces.
    - physical systems in Quantum Chemistry:
      - a single atom (e.g., a hydrogen atom or a carbon atom).
      - a molecule (e.g., water $H_2O$ or methane $CH_4CH_4$).
      - a chemical reaction system (e.g., the reaction between hydrogen and oxygen to form water).
    - key features of a physical system are the positions and charges of the nuclei and the distribution of electrons around them.

- **State of the physical system**: state of a physical system in quantum chemistry is described by the wave function of the system, which encodes all the information about the positions and momenta of the electrons and nuclei.
    - the *wavefunction* $\psi(r_1, r_2, ..., r_N, t)$ depends the coordinates of all electrons $(r_1, r_2, ..., r_N,)$ and time ($t$), and it ivolves according to the Schrödinger equation.
    - states in Quantum Chemistry:
      - *ground state*, which is the lowest energy state of the system
      - excited state, which is a higher energy state of the system
      - *molecular orbital*, which describes the distribution of an electron in a molecule.
      - transition state, which represents the highest energy state along a reaction pathway.
    - state of the system can also be described using density functional theory (DFT), where the electron density $\rho(r)$ is the fundamental quantity.
    - state of the system determines its chemical properties, reactivity, and spectroscopic behavior.
    - Changes in the state (e.g., electronic transitions) are responsible for chemical reactions and light absorption/emission.

- **Physical law**: the fundamental principles and equations that govern the behavior of electrons and nuclei in atoms and molecules. These laws are derived from quantum mechanics and electrodynamics.
    - physical laws in Quantum Chemistry include:
      - Schrodinger equation: $$
i \hbar \frac{\partial}{\partial t} \Psi\left(\mathbf{r}_1, \mathbf{r}_2, \ldots, \mathbf{r}_N, t\right)=\hat{H} \Psi\left(\mathbf{r}_1, \mathbf{r}_2, \ldots, \mathbf{r}_N, t\right),$$ where $\hat{H}$ is the Hamiltonian operator for the system. 
            - when solved, it gives you the wave function or electron density, which defines the state of the system
      - Born-Oppenheimer approximation: $$
\hat{H}=\hat{T}_e+\hat{V}_{e e}+\hat{V}_{e n}+\hat{V}_{n n}
$$, where $$\hat{T}_e$$ is the KE of electron, $$\hat${V}_{ee}$$  is the electron-electron interactions, $$\hat{V}_{e n}$$ is the electron-nucleus interaction, and $$\hat{V}_{n n}$$ is the nucleaus-nucleus interaction. 
            - simplified version of the Schrodinger equation, making it feasible (computationally) to calculate the electronic structure of molecules
      - other approximation methods for solving the Schrodinger equation, providing practical tools for quantum chemical calculations
          - Hartree-Fock equation: $$
    \hat{F} \psi_i(\mathbf{r})=\epsilon_i \psi_i(\mathbf{r})
    $$
                where $\hat{F} $ is the Fock operator, $\psi_i(\mathbf{r})$ are the molecular orbitals, and $\epsilon_i $ are the orbital energies. 
          - Kohn-Sham equations: $$
    \left[-\frac{\hbar^2}{2 m} \nabla^2+V_{\mathrm{eff}}(\mathbf{r})\right] \phi_i(\mathbf{r})=\epsilon_i \phi_i(\mathbf{r})
    $$
        - Configuration interactions 
        - Couple-Pair theories
        - Many-body perturbation theory
      - Pauli exclusion principle 
    - Physical laws in quantum chemistry are subject to conditions of applicability. For example:
      - Born-Oppenheimer approximation is valid when the nuclear motion is much slower than the electronic motion.
      - Hartree-Fock method provides accurate results for systems with weak electron correlation but fails for strongly correlated systems.








{% include references_fundamentals_quantum_chemistry.md %}