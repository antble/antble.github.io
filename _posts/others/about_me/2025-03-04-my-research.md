---
layout: post-others
title: "My Research"
date: 2025-03-04
last_modified_at: 2026-10-03
category: others
tag: research
featured_image: /assets/doctoral/
--- 

Although my physics research spans several fields, computational tools have been a consistent thread. During my bachelor's degree, I used density functional theory (DFT) with ADF-GUI. For my master's degree, I ported a Fortran program to Python. During my doctoral studies, I used LAMMPS for molecular dynamics simulations and extended a Fortran program for Monte Carlo simulations.

--- 

## Postdoctoral Research: ML and MD of biopolymers

I use machine learning (ML) to study the molecular dynamics (MD) of biopolymers.

<div class="publication">
  <div class="pub-thumbnail">
  <div class="pub-image-crop">
    <img src="{{site.url}}/assets/postdocliu/image-NV1G.png"
         alt="A Miscanthus-conditioned lignin system">
  </div>
</div>

  <div class="pub-description">
    <p>
      <b><a href="https://chemrxiv.org/doi/full/10.26434/chemrxiv.15008225/v1">Population-aware Generative Modeling of Lignin Ensemble</a></b>: 
      We developed a generative framework that produces lignin populations matching the aggregate experimental statistics of a specific feedstock. By sampling different ensemble sizes, we showed that the conditioned generative prior consistently produces populations with similar statistics.
    </p>
    <!-- <p>Code and related resources are available here:</p> -->
    <!-- <ul> -->
      <!-- <li>
        REINVENT-Lignin code:
        <a href="https://github.com/antble">reinventlignin</a>
        <ul>
           <li>Code diagram:
          <a href="https://coggle.it/">Coggle diagram</a>
           </li>
        </ul>
      </li>
      <li>
        LigninGen code:
      </li> -->
    <!-- </ul> -->
  </div>
</div>

--- 

## Doctoral Research: Parameterization of water and silica–water interactions using the Vashishta functional form
<div class="my-container">
<img src="{{ '/assets/doctoral/workplan.png' | relative_url }}"  
     style="width: 100%; height: auto;"
     >
     <i>Project Workflow</i>
</div>
My doctoral research focused on developing classical interatomic potentials for water, silica, and their interactions. The figure above shows the project's general workflow. I refined the parameters of the Vashishta potential, a reactive empirical model widely used in silica simulations, and extended its application to water under thermodynamic conditions relevant to Earth's crust. This work built on the potential's established use for materials such as silicon dioxide, silicon carbide, and alumina. The publications and an application are summarized below:

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/toc_graphics-1.png" alt="TOC Graphic">
  </div>
  <div class="pub-description">
    <p><b><a href="https://pubs.acs.org/doi/10.1021/acs.jpcb.4c06389">Genetic Algorithm Workflow for Parameterization of a Water Model Using the Vashishta Force Field</a></b>: We developed a parameterization workflow for a water model based on the Vashishta functional form. The resulting parameter set yields structural, transport, and thermodynamic properties consistent with those of water at temperatures above freezing. Our goal was to combine this water model with existing Vashishta silica models through a bond-order scheme.</p>
  </div>
</div>

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/avbmc-water80.gif" alt="Nucleation simulation graphic">
  </div>
  <div class="pub-description">
    <p>
      <b><a href="https://pubs.acs.org/doi/10.1021/acs.jctc.5c00722">Nucleation simulation using the Vashishta potential for water</a></b>: 
      For the first time, we used the Vashishta potential for water to simulate nucleation with an extended energy-bias aggregation-volume-biased Monte Carlo technique.
    </p>
    <p>Code and related resources are available:</p>
    <ul>
      <li>Biased Monte Carlo code: <a href="https://github.com/antble/avbmc-vashishta-water">avbmc-vashishta-water</a></li>
      <li>Code diagram: <a href="https://coggle.it/diagram/ZDo1BgAjwnrfugDE/t/vashishta">Coggle diagram</a></li>
    </ul>
  </div>
</div>

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/silanolconc-sim_vs_exp.png" alt="Silanol parameterization graphic">
  </div>
  <div class="pub-description">
    <p>
      <b><a href="https://pubs.aip.org/aip/jcp/article/165/10/104701/3403923/Silica-water-model-using-the-Vashishta-force-field">Silica–water model using the Vashishta force field</a></b>: 
      We tuned the parameters of the bond-order scheme through a two-stage optimization to reproduce silanol structural properties, silanol concentration, and the heat of immersion.
    </p>
    <ul>
      <li>Code: <a href="https://github.com/andeplane/vashishta_bond_order">Vashishta bond order</a></li>
      <li>Data: <a href="https://doi.org/10.5281/zenodo.19111996">Zenodo</a></li>
      <li>Interface builder: <a href="https://github.com/antble/interface-builder">interface-builder</a></li>
      <!-- <small>TTD: extend capabilities to other materials …</small>  -->
    </ul>
  </div>
</div>

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/fracture.png" alt="Dynamic fracture simulation of wet silica">
  </div>
  <div class="pub-description">
    <p>
      <b><a href="https://pubs.aip.org/aip/jcp/article/165/10/104701/3403923/Silica-water-model-using-the-Vashishta-force-field">Application: Dynamic fracture simulation in an aqueous environment</a></b>:
      We applied the silica–water Vashishta parameter set to a mode-I fracture simulation under NPT conditions. The simulations showed that water lowers silica's peak tensile stress and is associated with a more brittle response after peak stress.
    </p>
  </div>
</div>


---

## Master's Research: Quantum transport modelling
During my master's degree, I worked on quantum transport modelling. The project was ambitious, but I enjoyed reading Fortran 77 code and deciphering its variables alongside the equations in the original paper.
<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/masters-thesis/wigner_function.png">
  </div>
  <div class="pub-description">
    <p>
      <b>Quantum Transport Modelling using Lattice Weyl-Wigner Functions</b>: 
      I explored combining density functional theory with lattice Weyl-Wigner functions. My work focused on porting a Fortran 77 program to Python. To test the Python implementation, I simulated a one-dimensional resonant tunneling diode (RTD).
    </p>
    <ul>
      <li>LWW quantum transport: <a href="https://github.com/antble/lww-usc">lww-usc</a></li>
    </ul>  
  </div>
</div>

---

## Bachelor's Research: Water clusters using DFT (ADF-SCM)
<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/bachelors/water_trimer.png">
  </div>
  <div class="pub-description">
    <p>
      <b>IR Spectrum of Water Clusters using DFT simulations</b>: 
      I studied water clusters $\mathrm{(H_2O)_n}$, with n = 1–5, using density functional theory (DFT). Comparison with experimental vibrational frequencies and the geometric properties of the water monomer suggested that the GGA/BLYP-D(BJ) functional with the ET-pVQZ basis set is generally useful for calculating the vibrational frequencies of larger water clusters.
    </p>
  </div>
</div>


