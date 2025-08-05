---
layout: post-physics
title: Fundamentals of Electromagnetism
date: 2025-03-11
last_modified_at: 2025-03-15
category: physics
tag: [electromagnetism, fundamentals]
---


- **Physical system**: a physical system in electromagnetism can be as simple as a single electron or as complex as an entire power grid.
    - Point Charge System: A single charged particle (like an electron) or a collection of charges.
    - Current-Carrying Conductors: Wires carrying current, solenoids, or circuits.
    - Electromagnetic Fields: The electric field and magnetic field that exist in space and interact with matter.
    - Electromagnetic Waves: Light, radio waves, or any other form of electromagnetic radiation.
    - Capacitor and Inductor Systems: Systems storing energy in electric and magnetic fields.
    - Plasma: Ionized gases where charged particles move freely, interacting with electric and magnetic fields.

- **State of the physical system**: defined by the physical quantities that describe the system at a given moment in time (t) and space (x).
    - Electomagnetic fields: $E(x,t), B(x,t)$ strength as a function of space and time
    - Propertie of the physical object/system: 
      - electric charges ($q, Q$), current ($dQ/dt$), current density ($\mathbf{J}$)
      - Charge distribution : charges located per unit space
        - charge density ($dQ/dx$)
      - Electromagnetic potential: scalar ($V(x,t)$), vector ($A$)
      - Electromagnetic wave, electromagnetic fields $E,B$
      - mass ($m$), velocity $(v)$, position $(x,y,z)$
      - frequency, wavelength, polarization, amplitude
      - Energy density and Momentum
    - A physical phenomenon in electromagnetism, such as electromagnetic induction, light propagation, or the functioning of an electric circuit, happens when these quantities change.



- **Physical law**: describe the necessary and stable relationships between physical quantities. 
  - Maxwell's equation, relates $E(x,t)$ and $B(x,t)$
    - Ampere's Law (with Maxwell's correction): $\nabla \times \mathbf{B} = \mu_0 \mathbf{J} + \mu_0 \varepsilon_0 \frac{\partial \mathbf{E}}{\partial t}$
    - Faraday's Law of Induction: $\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}$
    - Gauss's Law for Magnetism, Electricity:$\nabla \cdot \mathbf{B} = 0$, $\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0}$
  - Lorentz Force Law: $\mathbf{F} = q(\mathbf{E} + \mathbf{v} \times \mathbf{B})$
  - Ohm's law: $V=IR$ 
  - Electromagnetic Wave equation: $\nabla^2 \mathbf{E} - \mu_0 \varepsilon_0 \frac{\partial^2 \mathbf{E}}{\partial t^2} = 0$
  - Poynting Theorem: $\mathbf{S} = \mathbf{E} \times \mathbf{H}$
  - Wave Equation for Electromagnetic Waves: $\nabla^2 \mathbf{E} - \mu_0 \varepsilon_0 \frac{\partial^2 \mathbf{E}}{\partial t^2} = 0$



How the State Changes (Physical Phenomena): 
- A moving charge creates a magnetic field ($B$).
- A changing magnetic field induces an electric field (Faraday’s Law).
- A changing electric field can produce a magnetic field (Maxwell’s correction to Ampère’s Law).
- A charge in an electric or magnetic field experiences a force (Lorentz Force).
- A physical phenomenon in electromagnetism, such as electromagnetic induction, light propagation, or the functioning of an electric circuit, happens when these quantities change.



{% include references_electromagnetism_fundamentals.md%}