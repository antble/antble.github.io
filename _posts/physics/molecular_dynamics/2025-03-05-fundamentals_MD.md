---
layout: post-physics
title: "Fundamentals of Molecular Dynamics" 
date: 2025-03-04
last_modified_at: 2025-03-05
category: physics
tag: molecule, dynamics
---


# Simulation in Principle 


The goal of this section is to introduce the fundamentals of molecular dynamic simulation. The first part of the section are an introduction on the underlying concepts of how, why, and what makes molecular dynamic simulation works. The next part will be a more advance level, that is getting a graduate level understanding of some undergraduate topic.

<!-- <div class="my-container">
<img src="{{site.url}}/assets/molecular_dynamics/michael_allen.png">
</div> -->

## Particle Model 
- molecular dynamics is an example of an application of particle model. This is based on the Born-Oppenheimer approximation where we can think of the electron instantaneously changing its position as we change the nuclei. The motion of the nuclei is under the influence of the electronic solution of the Schrodinger equation.
- the trajectory of the particle is basically the trajectory of the nuclei

## Ab-initio molecular dynamics 
It's goal is to "reduce the amount of fitting and guesswork" [3]. 

## Foundations 
- the basic idea is the use of Newton’s equation and a predefined potential for a system to get the dynamics of a system
- use of Hamiltonian and Lagrangian formulation to show that conventional MD is NVE
- the concept of erogidicity is exploited in the field of MD, the idea of ensemble average is equal to the time average measurement

## Computer Simulation 
- MD is like an experiment - adapt a mentality of an experimenter not a theorist
    - instead of merely performing a calculation, the computer becomes the virtual laboratory in which a system is studied - a numerical experiment.
- variety of modeling techniques developed over the years
    - MD
    - classical Monte Carlo
    - quantum based techniques involving path-integral and MCmethods
    - MD  + electron density function theory
    - cellular automata
    - Lattice-Boltzmann method


---
{% include references_moleculardynamics.md %}