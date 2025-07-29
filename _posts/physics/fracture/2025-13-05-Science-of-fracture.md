---
layout: post-physics
title: "Science of Fractures"
date: 2025-05-13
last_modified_at: 2025-07-29
category: physics
tag: physics, mechanics, multiscale
---
The science of fracture is a field of mechanics to understand and be able to do something before a fracture occur on materials. It focuses on crack initiation and propagation. At its core, it is known as fracture mechanics. [[1]](#tudelfnotes)

Microscopic cracks and defects are present in all materials due to various sources. When a load is applied to a material, these cracks act as stress concentrators. The stress at the tip of a crack can be significantly higher than the overall applied stress on the material. 

Any material has two defining properties, its  strength and its toughness. Strength has something to do with its ability to fight back a plastic flow while toughness is its ability to resist a crack propagation. 

<div class="image-caption-container">
<img src="{{site.url}}/assets/fracture/fracture.gif">
fracture in Si at 10K, simulation data from <a href="#file">[2] </a>
</div>

**Types of Fracture**:
- ductile fracture: the material undergoes significant plastic deformation before the crack propagates 
- brittle fracture: occurs suddenly and with little or no prior plastic deformation

**Macroscopic Manifestation of Fracture** [[6]](#kuna2013)
- type of loading 
- orientation of a crack in relation to its principal stresses
- stability of crack propagation 
- magnitude of inelastic deformations
- subcritical crack growth
- crack growth rate

**Microscopic Appearances of Fracture** [[6]](#kuna2013)
- cleavage fracture
- dimple fracture
- fatigue fracture
- creep fracture

**Damage**: cavities developed resulting to mechanical properties deterioration [[3]](#murakami2012)
  - aspects of damage depends on the type of material and the loading conditions
  - phenomological classification of damage: 
    - brittle damage: nucleation of microvoids or microcracks and their coalescence occuring without plastic deformation
    - ductile damage: microvoids develop due to large plastic deformation
    - creep damage: micovoids or microcracks nucleate and grow mainly on grain boundaries perpendicular to the tensile stress, or at the grain boundary triple points 
    - low cycle fatigue
    - very low cycle fatigue
    - high cycle fatigue damage
    - very high cycle fatigue damage
    - creep fatigue damage
    - spall damage


<div class="my-container">
<img src="{{ '/assets/fracture/classificationfractureprocesses.png' | relative_url }}"  
    alt="Fracture at different length scale" 
     style="width: 60%; height: auto;"
     >
</div>
<p style="text-align: center; margin-top: 0.5em;">a comprehensive classification list for fracture processes from reference <a href="#kuna2013">(Kuna, 2013)</a> in chapter 2.
</p>


## Modeling Damage
mechanical representation of damage states $$\Rightarrow f(\text{damage variables})$$ ? 

*(covered in detail in chapter 2 from [[3]](#murakami2012)):* 
  - Which effect at the meso-mechanical scale is important when defining damage?
    - e.g. development of microscopic voids in creep process
  - mathematical property of the damage variable to describe the damage state? 
    - scalar? vector? tensorial?
    - scalar damage variable $\psi(0 \leq \psi \leq 1)$
    - vector damage variable $\boldsymbol{\psi} = \psi \textbf{n}$
    - second-order damage tensor $\textbf{D}$
  - how to quantify damage magnitude? 
    - e.g. modeling by effective area reduction: $\psi =  -A\left(\frac{\sigma}{\psi }\right)^m$, $\sigma$ is the stress, $(A,m)$ are material constants.

damage variables: effective stress, uniaxial state of stress 
hypothesis of mechanical equivalence between the damaged and the undamaged material
other damage variables

Fracture mechanics provides a relation between geometry ($G$), the position and size ($a$) of the crack-like defect, the external loading ($L$), the local crack loading ($B$), the material resistance against crack propagation ($B_c$), and specific deformation law (elasticity, plasticity, etc.) of the material (M) [[6]](#kuna2013):
\begin{equation}
  B(G, L, M, a) \leq B_c(M)
\end{equation}

## Key Concepts
**Foundational Principles of Fracture Mechanics**: several key theoretical developments that laid the groundwork for modern fracture mechanics that provided the fundamental language and conceptss for analyzing cracked bodies
  -  Griffith's Energy Balance Criterion and Early Insights 
     -  fundamental contradiction: theoretical strength of a material $\neq$ force needed to break atomic bonds e.g. 100MPa $<<$ 10,000MPa
     -  Griffith hypothesized that this discrepancy was due to the presence of microscopic flaws or cracks within the material
        -  key outcome: the concept of critical energy release rate, $G_c$ representing the energy per unit area required to create a new fracture surfaces, considered as a material property, often referred to as the material's fracture toughness. 
        -  an existing crack is predicted to propagate if the energy release rate $G$ associated with its extension reaches or exceeds $G_c$
        - crack growth occurs when: (energy released from material relaxation) $\geq$ (energy required to create new crack surfaces)
  -  Linear Elastic Fracture Mechanics (LEFM): stress intensity factor
     -  LEFM builds upon and extends Griffith's energy-based concepts by providing a framework to characterize the stress field in the immediate vicinity of a crack tip. 
        -  stress distribution around and close to a crack tip is always the same [[5]](#janssen2024)
     -  it is predicated on several key assumptions: 
        -  the material is assumed to behave in a linear elastic manner
        -  plastic deformation is considered to be confined to a very small region around the crack tip relative to the crack length and other characteristic dimensions of the body 
     - LEFM introduces the stress intensity factor [(George R. Irwin, 1957)](#irwin1957) (SIF), represented by the variable $K$, is a fundamental material property in fracture mechanics that describes the "stress state at a crack tip, related to the rate of crack growth, and is used to establish failure criteria due to fracture"
     - SIF value $K$ depends on the applied external load $\sigma$, the size and geometry of the crack $a$, and the geometry of the body containing the crack $f(a/W)$: 
        \begin{equation} 
            K = \sigma \sqrt{\pi a} f(a/W)
            \label{eq:sif}
        \end{equation}
  - Modes of Fracture: the way a crack grows is categorized into 3 distinct modes of displacement, which describes the relative movement of the crack surfaces: 
      - mode I (opening mode): crack faces are pulled directly apart under a tensile stress that is perpendicular to the crack plane
      - mode II (sliding mode): crack surfaces slide over each other in a direction perpendicular to the leading edge of the crack. this is caused by an in-plane shear stress
      - mode III (tearing mode): crack surfaces move relative to each other in a direction parallel to the leading edge of the crack, caused by an out-of-plane shear stress 
  - Stress intensity factor and fracture toughness can be defined for each mode ($K_I, K_{II}, K_{III}$) and $$K_{Ic}, K_{IIc}, K_{IIIc}$$
    - will equation \eqref{eq:sif} change for each mode?

**Key Concepts in Fracture Mechanics**
Some key concepts from this field are: 
- stress intensity factor $K_I$, fracture toughness $K_{IC}$
  - $K_I$: this parameter quantifies the magnitude of the stress field at a crack tip, a function of applied stress, the size and geometry of the crack and the geometry of the component. 
  - $K_{IC}$: an intrinsic property of a material that represents its resistance to crack propagation
  - fundamental principle of fracture mechanics is that failure will occur when the stress intensity factor reaches the material's fracture toughness.
    \begin{equation}K_I \ge K_{IC}\end{equation}
- energy release rate $G$ and toughness $G_C$
- crack tip radius
- stress fields and the process zone







**Fracture Phenomena by Length Scale**: understanding and modeling fracture effectively requires a clear acknowledgement of its hierarchical nature. The physical mechanisms that dominate fracture processes, the relevant material features, and consequently the most appropriate modeling approaches, vary significantly with the length scale under consideration. 
<div class="my-container">
<img src="{{ '/assets/fracture/fracturelengthscale.png' | relative_url }}"  
    alt="Fracture at different length scale" 
     style="width: 45%; height: auto;"
     >
</div>
<p style="text-align: center; margin-top: 0.5em;">Fracture at different length scale <a href="#murakami2012">(Murakami, 2012)</a>
</p>


- **Nanoscale fracture** ($<100$ nm): fracture is governed by the discrete interactions between individual atoms and molecules
  - key phenomena at this scale include the explicit breaking of atomic bonds at a crack tip, the nucleation and motion of dislocations from highly stressed regions near a crack,  
  - modeling tools: 
    - molecular dynamics (MD)
    - DFT (for higher accuracy) and other quantum mechanical methods if electronic effects in bond breaking is important 
  - Mechanism of damage: tensile decohesion or shear decohesion [[3]](#murakami2012)
- **Microscale fracture** (100nm-100$\mu$m)
  - key features at this scale include grain boundaries in polycrystalline materials, interfaces between different phases in multi-phase materials, the presence of inclusions or precipitates, microscopic voids, and the formation and interaction of microcracks. 
  - modeling tools: 
    - continuum mechanics formulation (e.g., crsytal plasticity finite element methods (CPFEM))
    - cohesive finite element modeling, cohesive zone models (CZMs)
    - phase-field models to captura crack propagation through heterogeneous microstructures 
  - Mechanism of damage: 
      1. cleavage
      2. growth and coalescence of microvoids
      3. glide plane decohesion
      4. void growth due to grain-boundary diffusion
- **Mesoscale fracture** (100$\mu$m - few mm\cm)
  - bridges the gap between detailed microscopic behavior and macroscopic continuum response
  - this scale often involve the collective behavior of multiple microcracks, the accumulation of distributed damage, and the localization of this damage into larger, more distinct crack bands.
  - concept of a Representative Volume Element (RVE) becomes critically important at the mesoscale. An RVE is a notional volume of material that is large enough to be statistically representative of the heterogeneous microstructure, yet small enough to be considered a material point in a macroscopic continuum model. The properties derived from RVE analyses are then used to inform the constitutive behavior at the macroscale.
  - modeling tools: 
    - Continuum Damage Mechanics (CDM)
    - advanced finite element method (FEM) simulations incorporating sophisticated damage models or explicit mesostrctural features
    - phase-field models
    - lattice models
- **Macroscale fracture** (>few mm/cm)
    - deals with the mechanical response of bulk materials and entire engineering structures or components
    - cracks are typically treated as distinct geometric discontinuities rather than diffuse damage zones (though CDM can also be applied at this scale with homogenized damage properties)
    - primary focus of macroscale fracture modeling is on assessing structural integrity, determining crack stability (i.e., whether an existing crack will propagate under given loads), predicting the remaining service life of cracked components, and understanding fatigue crack growth behavior.
    - modeling tools: 
      -  [Linear Elastic Fracture Mechanics (LEFM)](#linear-elastic-fracture-mechanics)
      -  [Elastic-Plastic Fracture Mechanics (EPFM)](#elastic-plastic-fracture-mechanics)
      -  Finite Element Method (FEM) is extensively employed, often with specialized techniques to represent cracks, such as discrete crack elements, cohesive zone elements along potential crack paths
      -  advanced methods like the Extended Finite Element Method (XFEM)
      -  Peridynamics, particularly suited for large-scale simulations involving dynamic fracture and fragmentation

A significant hurdle in comprehensive fracture analysis is the "scale-mismatch" challenge. Phenomena that are critical at a lower scale (e.g., the diffusion of hydrogen atoms at the nanoscale, or the interaction of dislocations with precipitates at the microscale) can have profound and often detrimental consequences at a higher scale (e.g., hydrogen embrittlement leading to macroscopic failure, or the initiation of fatigue cracks). However, directly simulating these processes across the entire range of scales—from atomic interactions to component failure—is typically computationally prohibitive. 


Molecular dynamics simulations, for example, are powerful for elucidating atomistic mechanisms but are severely limited in the time and length scales they can practically address. One way to overcome this, with the current advent of GPUs, is to use an computationally efficient force field that would allow large scale and long range simulations. Conversely, macroscale models often rely on phenomenological constitutive laws that might not accurately capture the underlying physics if they are not properly informed by an understanding of lower-scale behaviors. This scale mismatch necessitates the development of robust multiscale modeling strategies or the formulation of advanced, physics-informed macroscale models that can effectively encapsulate the critical effects of lower-scale phenomena without requiring their explicit resolution.

## Linear Elastic Fracture Mechanics
## Elastic-Plastic Fracture Mechanics
  - 

---
{% include references_fracture.md %}