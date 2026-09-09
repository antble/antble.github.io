---
layout: post-others
title: "My Research"
date: 2025-03-04
last_modified_at: 2026-09-09
category: others
tag: research
featured_image: /assets/doctoral/
--- 

Though my physics research spans various fields, a consistent thread runs through it: the use of computational tools. During my bachelor's degree, I utilized DFT with ADF-GUI. For my master's, I worked with and ported a Fortran code to Python. And in my doctoral studies, I've utilized LAMMPS for molecular dynamics simulations and extended a Fortran-based code for Monte Carlo simulation.

--- 

## Postdoctoral Research: ML + MD of biopolymers

I will be using machine learning to study molecular dynamics of biopolymers.

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
      We developed a generative framework that produces lignin population that satisfies a specific feedstock experimental aggregate statistics. We showed that the distribution is robust by sampling different ensemble sizes; that is, one can repeatedly obtain a consistent statistics of a lignin population from the conditioned generative prior. 
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

## Doctoral Degree: Parameterization of water and water/silica interactions using the Vashishta functional form
<div class="my-container">
<img src="{{ '/assets/doctoral/workplan.png' | relative_url }}"  
     style="width: 100%; height: auto;"
     >
     <i>Project Workflow</i>
</div>
My research centers on developing interatomic potentials, specifically for water, silica, and their interactions, using a classical potential model. The figure above shows the general workflow we use for this project. My PhD work focused on refining the parameters of a reactive empirical potential, the Vashishta potential, which is widely used in silica simulations. I've  extended its application to model water at thermodynamic conditions of the Earth's crust, building upon its established success with other materials like silicond dioxide, silicon carbide and alumina. We published our work as follows: 

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/toc_graphics-1.png" alt="TOC Graphic">
  </div>
  <div class="pub-description">
    <p><b><a href="https://pubs.acs.org/doi/10.1021/acs.jpcb.4c06389">Genetic Algorithm Workflow for Parameterization of a Water Model Using the Vashishta Force Field</a></b>: Here, we develop a parameterization workflow to model water using Vashishta functional form. We obtain a parameter set capable of reproducing structure, transport and thermodynamic properties consistent with water properties at temperature above freezing point. The goal is to interface this water with existing silica models that uses the Vashishta potential using a bond-order scheme.</p>
  </div>
</div>

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/avbmc-water80.gif" alt="Nucleation simulation graphic">
  </div>
  <div class="pub-description">
    <p>
      <b><a href="https://pubs.acs.org/doi/10.1021/acs.jctc.5c00722">Nucleation simulation using the Vashishta potential for water</a></b>: 
      Here, for the first time, the Vashishta potential for water was used to simulate nucleation using an extended energy-bias aggregation-volume-biased Monte Carlo technique.
    </p>
    <p>Code are available:</p>
    <ul>
      <li>biased MC code: <a href="https://github.com/antble/avbmc-vashishta-water">avbmc-vashishta-water</a></li>
      <li>code diagram<a href="https://coggle.it/diagram/ZDo1BgAjwnrfugDE/t/vashishta"> coggle link</a> </li>
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
      Here, we tuned the parameter set of the bond-order scheme to reproduce silanol structural properties, silanol concentration, and heat of immersion using a 2-stage optimization.
    </p>
    <ul>
      <li> Code: <a href="https://github.com/andeplane/vashishta_bond_order">Vashishta bond order</a></li>
      <li> Data: <a href="https://doi.org/10.5281/zenodo.19111996">Zenodo link</a></li>
      <li> Interface builder: <a href="https://github.com/antble/interface-builder">interface-builder</a></li>
      <!-- <small>TTD: extend capabilities to other materials …</small>  -->
    </ul>
  </div>
</div>

<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/doctoral/fracture.png" alt="Silanol parameterization graphic">
  </div>
  <div class="pub-description">
    <p>
      <b><a href="https://pubs.aip.org/aip/jcp/article/165/10/104701/3403923/Silica-water-model-using-the-Vashishta-force-field">Dynamic Fracture Simulation in Aqueous Environment</a></b>: 
      Here, we demonstrate and validate the water/silica Vashishta parameter set, applying mode-I loading in an NPT ensemble fracture simulation. We showed that the presence of water reduces the wet silica's peak stress and promotes a more brittle failure mode. 
    </p>
  </div>
</div>


---

## Master's Degree : Quantum Transport Modelling 
During my masters, I worked on quantum transport modelling. It was an ambitious goal but it was fun, specially reading Fortran 77 code and trying to decipher the variables along with the equations on the corresponding old paper written before I was born.
<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/masters-thesis/wigner_function.png">
  </div>
  <div class="pub-description">
    <p>
      <b>Quantum Transport Modelling using Lattice Weyl-Wigner Functions</b>: 
     Here, I tried to incorporate density functional theory with lattice Weyl-Wigner functions. My work was concentrated on porting a Fortran 77 code to a python code. To test its validity, I simulated a 1D resonant tunneling diode (RTD).  
    </p>
    <ul>
      <li>LWW quantum transport: <a href="https://github.com/antble/lww-usc">lww-usc</a></li>
    </ul>  
  </div>
</div>

---

## Bachelor's Degree : Water Clusters using DFT (ADF-SCM)
<div class="publication">
  <div class="pub-thumbnail">
    <img src="{{site.url}}/assets/bachelors/water_trimer.png">
  </div>
  <div class="pub-description">
    <p>
      <b>IR Spectrum of Water Clusters using DFT simulations</b>: 
      Here, I  studied water clusters $\mathrm{(H_2O)_n}$, n=1-5 using density functional theory (DFT). Comparing the experimental values of the vibrational frequencies and geometrical properties of water monomer, the data suggests that GGA/BLYP-D(BJ) functional at ET-pVQZ basis set is generally useful for calculating the vibrational frequencies for higher water clusters.
    </p>
  </div>
</div>



