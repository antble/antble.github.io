---
layout: post-physics
title: "Notes on DFT"
date: 2026-01-30
last_modified_at: 2026-01-30
category: physics
tag: [physics, notes, dft]
---
revisiting DFT, personal notes meant for a quick brush-up, specific derivation added

---
- many-body problem 
  - complications come from the fact that we cannot separate the coordinates
    - modelling aluminum (13 electrons) requires $(10^6)^{13}$ variables to describe the system
- observables 
  - can we rewrite this expression ? 
  - operation $O$ is determined by the operator $\hat{O}$ and its Hamiltonian $\hat{H}$
  - $V_{ext}$ contains sufficient info. to determine the observable
    - $O[\Psi]\rightarrow O[V_{ext}]$
    - is there a more compact quantity ? : $O[V_{ext}]\rightarrow O[?]$
  - one-body operator, 2-body operator : density $n_1(x_1), n(x_1, x_2)$ can be used 
- Functionals $F$: 
  - $F : C^{\infty}(\mathbb{R}) \rightarrow \mathbb{R}$
    - e.g. $F[f] = \int_a^b f(x) = A$
  - functional derivative $\frac{\delta F[f]}{\delta f}$
    - will be useful when dealing with the Kohn-Sham equation derivation
    - obtained from the following expression: 
    \begin{equation}
    \left . \frac{dF[f+\epsilon\eta(x)]}{d\epsilon} \right|_{\epsilon=0} = \int dx \frac{\delta F[f]}{\delta f} \eta(x) \label{eq:funcderivative}
    \end{equation}
  - example (to be operative) : 
    - $F[f] = \int dx \delta(x-x_0) f(x) = f(x_0)$, compare this to equation (\ref{eq:funcderivative})
    \begin{align}
       \left .\frac{dF[f+\epsilon\eta(x)]}{d\epsilon} \right|_{\epsilon=0} &= \int dx \delta(x-x_0)\eta(x) \Rightarrow \int dx \frac{\delta F[f]}{\delta f} \eta(x) \\\ \implies  \frac{\delta F[f]}{\delta f} &=  \delta(x-x_0)
    \end{align}
 - types of functional 
   - local functionals : $E_{ext}[n] = \int \mathbf{r} n(\mathbf{r}) V_{ext}(\mathbf{r})$
   - non-local functions : $ E_{H}[n] = \frac{1}{2} \int d\mathbf{r}d\mathbf{r'} \frac{n(r)n(r')}{\|r-r'\|} $
 -  Hohenberg-Kohn Theorem
    -  (1) HK theorem : external potential $V_{ext}$ is determined, within a trivial additive constant, by the electron density ($n(\mathbf{r})$) [2]
       -  $n(\mathbf{r})$ determines the ground state wavefunction and other electronic properties of the system
          -  hence, it determine all other ground state properties
       -  every observable in the ground state is a unique functional of the electron density
       -  $O=\bra{\Psi} \hat{O} \ket{\Psi} = O[V_{ext}]$ ??
          -  $V_{ext}\rightarrow n(\mathbf{r})$, implies $O[V_{ext}] \rightarrow O[n(\mathbf{r})]$
          -  $E[n] = \bra{\Psi} \hat{H} \ket{\Psi} $
    -  (2) HK theorem: for a trial density $n(\mathbf{r})>0$ and $\int n(\mathbf{r}) d\mathbf{r}=N$, $E_0 \leq E[n(\mathbf{r})]$, where $E[n(\mathbf{r})]$ is the energy functional 
    -  How to calculate the density?
 - Born-Oppenheimer approximation
 - auxilliary system?
   - what could be a good auxilliary system for many electrons be?
 - Kohn-Sham theorem: 
   - for each system, real system of interacting electrons, there exist an auxiliary system of non-interacting electrons which has the same density
   - what are the best one-particle wavefunctions of the auxialliary system that minimizes the energy functional $E[n]$
     - $\frac{\delta E[n]}{\delta \psi_i^\*}=0$, constrained by $\int \psi_i^\* \psi_i = 1$
     - use the lagrange multiplier method: $\frac{\delta [E[n]-\lambda (\int d\mathbf{r}\psi_i^\* \psi_i - 1)]}{\delta \psi_i^\*} = 0$
     - total energy from the Kohn-Sham equation: 
\begin{align}
    & \frac{\delta T_s[n]}{\delta \psi_i^\*}  + \frac{\delta}{\delta \psi_i^\*} \int d\mathbf{r} n(\mathbf{r})V_{ext}(\mathbf{r}) + \frac{\delta }{\delta \psi_i^\*}\int d\mathbf{r} d\mathbf{r}' \frac{n(\mathbf{r})n(\mathbf{r'})}{\|\mathbf{r}-\mathbf{r}'\|}  
\end{align} \begin{align} + \frac{\delta E_{xc}}{\delta \psi^\*_i}  - \lambda_i \frac{\delta }{\delta \psi^\*_i} \int d\mathbf{r} \psi_i^\*(\mathbf{r})\psi_i(\mathbf{r}) = 0 
\end{align}
        <details> 
            <summary>First term functional derivative</summary>
            \begin{align}
                T_s[\psi_i(\mathbf{r})] &= \int d\mathbf{r} \psi_i^*(\mathbf{r})\left( \frac{-\nabla^2}{2}\right) \psi_i(\mathbf{r}) \\
                    \left. \frac{dT[\psi_i(\mathbf{r}) + \eta(\mathbf{r})\epsilon]}{d\epsilon}  \right|_{\epsilon=0} &= \left.\frac{d}{d\epsilon} \int d\mathbf{r} (\psi_i^*(\mathbf{r}) + \eta(\mathbf{r})\epsilon) \left( \frac{-\nabla^2}{2}\right) \psi_i(\mathbf{r}) \right|_{\epsilon=0}\\ 
                    &= \int d\mathbf{r} \left[\left( \frac{-\nabla^2}{2}\right) \psi_i(\mathbf{r}) \right]  \eta(\mathbf{r})  \\
                    \implies \frac{\delta T_s[\psi^*_i]}{\delta \psi^*_i} &= \left( \frac{-\nabla^2}{2}\right) \psi_i(\mathbf{r})
            \end{align}
        </details>
        <details>
            <summary>Second term functional derivative</summary>
            \begin{align*}
            F[\psi_i^*] &= \int d\mathbf{r} \sum_j \psi_j^*(\mathbf{r})\psi_j(\mathbf{r}) V_{ext}(\mathbf{r}) \\
                    \left. \frac{d F[\psi_i^* + \epsilon \eta(\mathbf{r})]}{d\epsilon}\right|_{\epsilon=0} &= \left.\frac{d}{d\epsilon}  \int d\mathbf{r} \sum_j (\psi_j^*(\mathbf{r})+ \delta_{ij}\eta(\mathbf{r})\epsilon)\psi_j(\mathbf{r}) V_{ext}(\mathbf{r}) \right|_{\epsilon=0} \\
                &= \left. \frac{d}{d\epsilon}  \int d\mathbf{r} \sum_j (\psi_j^*(\mathbf{r}) \psi_j(\mathbf{r})) \right|_{\epsilon=0} + \left. \frac{d}{d\epsilon}  \int d\mathbf{r}\eta(\mathbf{r})\epsilon \sum_j \delta_{ij}\psi_j(\mathbf{r}) V_{ext}(\mathbf{r}) \right|_{\epsilon=0} \\
                &= \left.  \frac{d}{d\epsilon}  \int d\mathbf{r} \left[ \psi_i(\mathbf{r}) \epsilon V_{ext}(\mathbf{r})\right]\eta(\mathbf{r}) \right|_{\epsilon=0} \\ 
                &= \int d\mathbf{r} [\psi_i(\mathbf{r}) V_{ext}(\mathbf{r})]\eta(\mathbf{r})  \\
                    \implies \frac{\delta F[\psi^*(\mathbf{r})]}{\delta \psi^*(\mathbf{r})} &=\psi_i(\mathbf{r})V_{ext}(\mathbf{r}) 
            \end{align*}
        </details>
        <details>
            <summary>Third term functional derivative</summary>
            \begin{align*}
                F[\psi^*(\mathbf{r})] &= \frac{1}{2}\int d\mathbf{r} d\mathbf{r}' \frac{n(\mathbf{r})n(\mathbf{r'})}{|\mathbf{r}-\mathbf{r}'|} \\
                \left. \frac{d F[\psi_i^*(\mathbf{r}) + \epsilon \eta(\mathbf{r})]}{d\epsilon}\right|_{\epsilon=0} &= \frac{1}{2}\frac{d}{d\epsilon} \int  d\mathbf{r} \int d\mathbf{r'}n(\mathbf{r})\frac{1}{|\mathbf{r}-\mathbf{r}'|}n(\mathbf{r'}) \\
                &= \frac{1}{2}\frac{d}{d\epsilon} \int  d\mathbf{r} \int d\mathbf{r'} \sum_j (\psi^*_j(\mathbf{r}) + \delta_{ij}\eta(\mathbf{r})\epsilon) \psi_j(\mathbf{r}) \frac{1}{|\mathbf{r}-\mathbf{r}'|} \sum_k (\psi^*_k(\mathbf{r'}) + \delta_{ik}\eta(\mathbf{r'})\epsilon)) \psi_k(\mathbf{r'}) \\
                &= \frac{1}{2}\frac{d}{d\epsilon} \int  d\mathbf{r} \int d\mathbf{r'} [n(\mathbf{r}) + \eta(\mathbf{r})\epsilon\psi_i(\mathbf{r})] \frac{1}{|\mathbf{r}-\mathbf{r}'|} [ n(\mathbf{r'}) + \eta(\mathbf{r'})\epsilon \psi_i(\mathbf{r'})]\\
                \left. \frac{d F}{d\epsilon} \right|_{\epsilon=0} &= \frac{1}{2} \int d\mathbf{r} \int d\mathbf{r}' \frac{\eta(\mathbf{r})\psi_i(\mathbf{r})n(\mathbf{r}') + n(\mathbf{r})\eta(\mathbf{r}')\psi_i(\mathbf{r}')}{|\mathbf{r}-\mathbf{r}'|} \\
                &= \int d\mathbf{r} \left[ \psi_i(\mathbf{r}) \int d\mathbf{r}' \frac{n(\mathbf{r}')}{|\mathbf{r}-\mathbf{r}'|} \right] \eta(\mathbf{r}) \\
                \implies\frac{\delta F[\psi_i^*(\mathbf{r})]}{\delta \psi^*_i} &= \psi_i(\mathbf{r}) \int d\mathbf{r}' \frac{n(\mathbf{r}')}{|\mathbf{r}-\mathbf{r}'|}
            \end{align*}
        </details>
        <details>
            <summary>Fourth term functional derivative</summary>
            \begin{align}
                \frac{\delta E_{xc}}{\delta \psi_i^*} &= \frac{\delta E_{xc}}{\delta n(\mathbf{r})} \frac{\delta n(\mathbf{r})}{\delta \psi_i^*} \\ 
                &= \frac{\delta E_{xc}}{\delta n(\mathbf{r})}\frac{\delta \sum_j \psi^*_j(\mathbf{r}) \psi_j(\mathbf{r})}{\delta  \psi^*_i(\mathbf{r})} \\ 
                &= \frac{\delta E_{xc}}{\delta n(\mathbf{r})} \delta_{ij} \psi_j(\mathbf{r}) \\ 
                \implies \frac{\delta E_{xc}}{\delta \psi_i^*}&= \frac{\delta E_{xc}}{\delta n(\mathbf{r})}\psi_i(\mathbf{r})
            \end{align}
        </details>
        <details>
            <summary>Constraint term functional derivative</summary>
            \begin{align*}
                F[\psi^*(\mathbf{r})] &= \int d\mathbf{r} \psi_i^*(\mathbf{r})\psi_i(\mathbf{r}) \\
                \left. \frac{d F[\psi_i^*(\mathbf{r}) + \epsilon \eta(\mathbf{r})]}{d\epsilon}\right|_{\epsilon=0} &= \left.\frac{d}{d\epsilon}  \int d\mathbf{r} (\psi_i^*(\mathbf{r}) + \eta(\mathbf{r})\epsilon)\psi_i(\mathbf{r})   \right|_{\epsilon=0} \\ 
                &= \left.\frac{d}{d\epsilon}  \int d\mathbf{r} (\psi_i^*(\mathbf{r}) \psi_i(\mathbf{r})  \right|_{\epsilon=0} + \left.\frac{d}{d\epsilon} \int d\mathbf{r}  \eta(\mathbf{r})\epsilon\psi_i(\mathbf{r})   \right|_{\epsilon=0} \\ 
                &= \ \left.\frac{d}{d\epsilon} \int d\mathbf{r}  \eta(\mathbf{r})\epsilon\psi_i(\mathbf{r})   \right|_{\epsilon=0} \\
                &= \int d\mathbf{r}  \eta(\mathbf{r})\psi_i(\mathbf{r}) \\
                \implies \frac{\delta F[\psi^*(\mathbf{r})]}{\delta \psi^*(\mathbf{r})} &= \psi_i(\mathbf{r})
            \end{align*}
        </details>
   - because of the auxilliary system idea and the variational principle, we are able to write one particle equations
   - KS gives the exact electron density
   - unknown: $E_{xc}$ or $V_{xc}$
     - Exchange-correlation term 
       - strategies for approximation: empirical vs. non-empirical
       - Jacob's ladder of approximation
       - LDA, GGA, meta GGA, hybrid
   - how to solve the KS equation -- self-consistent field method
    
 - Universal Functional
 - Material Properties
   - band gap
   - bond dissociation energies
   - bond length, lattice constants
   - cohesive energy 
   - bulk moduli
   - dipole moment
 - Limitations
   - $E_{xc}, V_{xc}$ are just approximate
   - large variety of xc, no systematic approach
   - problems: barriers of chemical reactions, dissocation energies of ions, van der Waals bonding, phase transition
   - uses of KS equation: band structure, effective masses, optical, photo emission
- ML/DL in DFT
  - machine-learned density functional
  - electron density learning 


--- 

{% include references_dft.md%}