---
layout: post-programming
title: The Joy of Working with Legacy Code
date: 2025-05-14
last_modified_at: 2026-10-03
category: programming
tag: [fortran, blog]
---
## Reading legacy scientific code

Legacy scientific code, such as FORTRAN physics simulations from the 1970s, can be a time capsule of tested scientific ideas and optimizations for the hardware available at the time. Its structure may be difficult to navigate, but it can preserve reasoning that is not documented elsewhere.

Updating these programs can be difficult. A change that looks like routine cleanup may alter the scientific behavior they encode, so I try to understand both the implementation and the underlying model before changing them.

I have worked with legacy Fortran code in two projects:

- [AVBMC code](https://github.com/antble/avbmc-vashishta-water) — Monte Carlo simulations
- [LWW code](https://github.com/antble/lww-usc) — quantum transport

## Reading someone else's codebase

Reading an unfamiliar codebase helps me infer the original developer's intent from choices about variables, functions, and overall structure. I want to understand not only what the code does, but why it does it that way.

Questions I ask include:

- **Design philosophy:** Is the code <a href="{% post_url programming/2017-09-07-fundamentals-of-programming %}">object-oriented, functional, or procedural</a>? Does it prioritize scalability, readability, or performance?
- **Problem-solving approach:** How are complex problems broken into smaller steps, and what algorithms or data structures support those steps?
- **Constraints and trade-offs:** Could a seemingly inefficient function be conserving memory? Does a long variable name distinguish closely related physical quantities?

Understanding these choices makes maintenance and debugging more reliable. It helps me fix bugs and add features without unintentionally changing the scientific behavior the code is meant to preserve.

Other code worth studying:

- [Quantum ESPRESSO](https://github.com/QEF/q-e)
- [LAMMPS](https://github.com/lammps/lammps)
- [Atomsk](https://github.com/pierrehirel/atomsk)
