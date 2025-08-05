---
layout: post-physics
title: Fundamentals of Fluid Mechanics
date: 2025-06-29
last_modified_at: 2025-06-29
category: physics
tag: [fundamentals]
---


- **physical system**: the physical system in fluid mechanics is typically a control volume of fluid. This can be a finite region of a liquid or gas, with defined boundaries. This control volume can be stationary, or it can move and deform with the fluid. The key is that it defines the specific portion of the fluid under consideration. The fluid within this volume is the collection of physical objects of interest. For instance, the physical system could be:
  - water flowing through a section of a pipe.
  - air moving over an airplane wing.
  - a volume of gas in a container.


- **state of the physical system**: the state of the physical system in fluid mechanics is characterized by a set of physical quantities that describe the properties of the fluid within the control volume at a particular instant in time. A change in any of these properties signifies a change in the state of the fluid system, which constitutes a physical phenomenon.  These quantities and their interrelationships define the condition of the fluid. Key state variables include:
  - pressure (P): The force exerted by the fluid per unit area.
  - velocity (v): The speed and direction of fluid flow at different points within the system.
  - density ($\rho$): The mass of the fluid per unit volume.
  - temperature (T): A measure of the average kinetic energy of the fluid particles.
  - viscosity ($\mu$): A measure of the fluid's resistance to shear or angular deformation.


- **physical law of thermodynamics**: the behavior of a fluid system is governed by fundamental physical laws that describe the stable and necessary relationships between the physical quantities. These laws are often expressed as differential or integral equations.
  - The primary physical laws governing fluid mechanics are the conservation laws:
    - **Conservation of Mass (Continuity Equation)**: This law states that the mass of a fluid within a closed system remains constant over time. For a control volume, the net rate of mass flowing out must be equal to the rate of decrease of mass within the volume. This is mathematically expressed by the continuity equation. The general form of the continuity equation is:
    \begin{equation}
      \frac{\partial \rho}{\partial t}+\nabla \cdot(\rho v)=0
    \end{equation}
    where $\rho$ is the fluid density, $t$ is time, $v$ is velocity, and $\nabla \cdot$ is the divergence operator. For incompressible fluid, the $\rho$ is constant, reducing the equation to: 
    \begin{equation} \nabla \cdot v=0 \end{equation}
    - **Conservation of Momentum (Newton's Second Law)**: This law relates the change in momentum of the fluid to the forces acting on it. It states that the time rate of change of momentum of the fluid in a control volume is equal to the sum of all external forces acting on that volume. These forces include pressure forces, viscous forces, and body forces like gravity. This principle is embodied in the Navier-Stokes equations.
    For a compressible, Newtonian fluid, the equation is:
    \begin{equation}
      \rho\left(\frac{\partial v}{\partial t}+(v \cdot \nabla) v\right)=-\nabla p+\nabla \cdot \tau+\rho g
    \end{equation}
    where $\rho$ is density, $v$ is velocity, $t$ is time, $p$ is the pressure, $\tau$ is the viscous stress tensor, $\rho g$ represents body forces.
    For an incompressible flow with constant viscosity, the equation simplifies to the more commonly known form:
    \begin{equation}
      \rho\left(\frac{\partial v}{\partial t}+(v \cdot \nabla) v\right)=-\nabla p+\mu \nabla^2 v+\rho g
    \end{equation} 
    where $\mu$ is dynamic viscosity, $\nabla^2$ is the Laplacian operator. 
    - **Conservation of Energy (First Law of Thermodynamics)**: This law states that the total energy of a fluid system remains constant, although it can be converted from one form to another. For a control volume, the rate of change of energy within the volume is equal to the net rate of heat transfer into the volume plus the net rate of work done on the volume.
    The general form of the energy equation is:
    \begin{equation}
      \rho \frac{D e_t}{D t}=\nabla \cdot(\tau \cdot v)-\nabla \cdot q+\rho f \cdot v
    \end{equation}
    A more detailed form can be written as:
    \begin{equation}
      \frac{\partial\left(\rho e_t\right)}{\partial t}+\nabla \cdot\left(\rho e_t v\right)=-\nabla \cdot(p v)+\nabla \cdot(\tau \cdot v)-\nabla \cdot q+\rho f \cdot v
    \end{equation}
    where $e_t$ is the total energy per unit mass, $D/Dt$ is the material derivative, $q$ is the heat flux vector, and $f$ represents the body forces per unit mass. 
  These fundamental laws, along with their associated equations, provide the mathematical framework for analyzing and predicting the behavior of fluid systems under various conditions. The applicability of these laws depends on specific conditions, such as whether the flow is compressible or incompressible, viscous or inviscid, and laminar or turbulent.


  - These three sets of equations, along with an equation of state that relates thermodynamic variables, provide a complete mathematical description of fluid flow.


**Physical Phenomena**: 
A change in the state of a fluid system is a physical phenomenon. The state of a physical system in fluid mechanics changes when its defining properties such as pressure, velocity, density, and temperature are altered. These changes, which are the essence of physical phenomena in fluids, occur due to the interactions within the fluid and with its surroundings. 


Here are examples of how the state changes, leading to common physical phenomena:
- Change in Velocity: When a fluid initially at rest begins to move, its velocity changes from zero. This is a change in state. For instance, opening a valve to let water flow through a pipe initiates a change in the velocity field throughout the pipe. This phenomenon is driven by a pressure difference and is governed by the *conservation of momentum*.
- Change in Pressure: As a fluid flows from a wider to a narrower section of a pipe (a venturi), its velocity increases, and its pressure decreases. This change in pressure, known as the Venturi effect, is a direct consequence of the interplay between velocity and pressure described by the *conservation of energy (Bernoulli's principle)* and *momentum*.
- Change in Density: If a gas in a cylinder is compressed by a piston, its volume decreases, and its density increases. This is a change in the state of the gas. This phenomenon also typically involves a change in pressure and temperature, as described by the *ideal gas law* and the *conservation of energy*.
- Change in Temperature: When a cold fluid flows over a hot surface, heat is transferred from the surface to the fluid. This causes the temperature of the fluid to increase, which is a change in its thermal state. This process, known as *convection*, can also affect the fluid's density and viscosity, potentially creating buoyancy-driven flows.