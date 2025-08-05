---
layout: post-physics
title: "Fundamentals of Solid State Physics"
date: 2025-06-19
last_modified_at: 2025-06-29
category: physics 
tag:  [solidstate, fundamentals]
---

**Physical System**: The Crystalline Solid <br>
  - in solid-state physics, the primary physical system is the crystalline solid. This system is a collection of a vast number of atoms, ions, or molecules arranged in a highly ordered, repeating three-dimensional pattern known as a crystal lattice
  - the key components of this physical system are:
    - ions: These are the positively charged atomic nuclei and their core electrons, which are essentially fixed in their lattice positions.
    - valence electrons: These are the outermost electrons of the constituent atoms, which are not tightly bound to individual atoms and can move throughout the crystal.
    - the defining physical property of this system is its periodicity. The regular arrangement of the ions creates a periodic potential energy landscape through which the valence electrons move.

**State of a Physical System**: Electronic and Vibrational States <br>
- the state of a crystalline solid is characterized by the collective behavior of its constituent ions and valence electrons. This state is described by specific physical quantities that capture the system's electronic and vibrational properties.
- Key physical quantities that define the state include:
  - *electronic band structure*: This describes the ranges of energy that electrons are allowed to possess within the crystal. The band structure, with its allowed energy bands and forbidden band gaps, determines whether a solid is a metal, a semiconductor, or an insulator. A change in the occupation of these energy levels, for instance by exciting an electron with light, is a physical phenomenon.
  - *Phonon Dispersion Relation*: This describes the relationship between the energy (or frequency) and momentum of the quantized vibrations of the crystal lattice, known as phonons. Phonons are crucial for understanding a solid's thermal properties, such as heat capacity and thermal conductivity.
  - The interrelationship between the electrons and the vibrating lattice defines the overall state of the solid. 
    - an example: the scattering of electrons by phonons is a fundamental interaction that gives rise to electrical resistance. A change in external conditions, such as temperature or pressure, will alter these quantities and thus change the state of the physical system.

**Physical Law**: Bloch's Theorem
- A fundamental physical law in solid-state physics is Bloch's theorem. It provides a powerful description of the behavior of electrons in the periodic potential of a crystal lattice.
  - the Law: Bloch's theorem states that the wavefunctions of electrons in a periodic potential take the form of a plane wave modulated by a function that has the same periodicity as the crystal lattice. Mathematically, the electron wavefunction ψ(r) can be written as:<br>
  $$
  \psi_k(r)=e^ 
  {ik\cdot r} u_k(r)
  $$ <br>
  where:
    - $e^{ik\cdot r}$ is a plane wave with wavevector k (related to the electron's crystal momentum).
    - $u_k(r)$ is a function that has the same periodicity as the crystal lattice, i.e., $u_k(r)=u_k(r+R)$ for any lattice vector $R$.
 - Conditions of Applicability
    - Bloch's theorem is strictly valid under the condition of a perfectly periodic potential. This implies an ideal crystal with no defects, impurities, or thermal vibrations that would disrupt the perfect periodicity of the lattice.

***Method of Application***
The primary application of Bloch's theorem is in the calculation of the electronic band structure of a solid. By applying this theorem, the complex problem of solving the Schrödinger equation for a vast number of interacting electrons and ions is simplified. The resulting energy eigenvalues as a function of the wavevector k form the energy bands. This band structure is then used to:
  - classify materials: Based on whether the energy bands are filled, partially filled, or have a gap, one can predict if a material will be an insulator, a metal, or a semiconductor.
  - explain transport properties: The shape of the energy bands determines how electrons respond to electric and magnetic fields, thus explaining properties like electrical conductivity and the Hall effect.