---
layout: post-physics
title: "Fundamentals of Classical Mechanics"
date: 2025-03-05
latest_modifed_at: 2025-03-05
category: physics
tags: [physics, fundamentals, classical, mechanics]
---



- **physical system**:  a physical system consists of one or more particles or rigid bodies that interact with each other and their environment through forces. The system is characterized by its configuration, which specifies the positions and velocities of all its components.
  - physical systems in Classical Mechanics:
    - single particle moving under the influence of gravity (e.g., a projectile).
    - system of two particles connected by a spring (e.g., a harmonic oscillator).
    - rigid body rotating about a fixed axis (e.g., a spinning top).
  - the physical system is described by its degrees of freedom, which are the independent parameters needed to specify its configuration (e.g., position coordinates $(x,y,z)$ for a particle). 
- **state of the physical system**: described by the positions and momenta (or velocities) of all the particles or bodies in the system. For a system with $N$ particles, the state is specified by:
  - position coordinates $q=(q_1, q_2, ..., q_N$)
  - momentum coordinates $p=(p_1, p_2, ..., p_N$)
  - The state of the system at any time $t$ is represented as a point in phase space, which is a 2N-dimensional space spanned by the positions $\mathbf{q}$ and momenta $\mathbf{p}$.
- **physical law**: physical laws are the fundamental principles and equations that govern the motion of physical systems. These laws are derived from Newton's laws of motion, Lagrangian mechanics, or Hamiltonian mechanics
  - physical laws in Classical Mechanics include: 
    - Newton's second law: $F=ma$
    - Lagrange's equations:
        $$
        \frac{d}{dt}\frac{\partial L}{\partial \dot{q}_i} - \frac{\partial L}{\partial q_i} = 0
        $$
      - where $L=T-V$ is the Lagrangian (kinetic energy T minus potential energy V) and $q_i$ are the generalized coordinates 
    - Hamilton's equations: 
        $$
        \dot{q}_i = \frac{\partial H}{\partial p_i}, \dot{p}_i = -\frac{\partial H}{\partial q_i}, 
        $$
    - Conservation Laws:
      - conservation of energy (if the system is conservative).
      - conservation of momentum (if no external forces act on the system).
      - conservation of angular momentum (if no external torques act on the system).
  - physical laws in Classical Mechanics are subject to conditions of applicability. For example:
    - Classical Mechanics is valid for objects moving at speeds much smaller than the speed of light.
    - it assumes that the system can be described deterministically (no inherent randomness).