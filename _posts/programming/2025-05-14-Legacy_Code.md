---
layout: post-programming
title: The Joy in Working with Legacy Code
date: 2025-05-14
last_modified_at: 2025-07-14
category: programming
tag: [fortran, blog]
---
## On reading legacy codebase
Legacy scientific code, like 1970s FORTRAN physics simulations, is a unique time capsule embodying validated scientific intuition and hardware-specific optimizations within its often complex structure, distinct from typical outdated software.

Trying to "update" these programs is incredibly difficult because you might accidentally mess up the important, time-tested science built into them, making it more like starting the entire scientific discovery process all over again rather than just fixing some code.


I have two experience on working with legacy code on Fortran: 
- [AVBMC code](https://github.com/antble/avbmc-vashishta-water)
  - monte carlo simulation
- [LWW code](https://github.com/antble/lww-usc)
  - quantum transport code 

## On reading others codebase
Reading a codebase from scratch allows you to understand the developer's intent and the logic behind their choices in variables, functions, and the overall architecture. It's a process of reverse-engineering their thought process to grasp not just what the code does, but why it does it that way. 

Key insights you can gain include:
- design philosophy: You can identify the high-level approach. Is the code <a href="{% post_url programming/2017-09-07-fundamentals-of-programming %}">object-oriented or functional </a>? Is it designed for scalability, readability, or raw performance?

- problem-solving approach: You see how the developer broke down complex problems into smaller, manageable parts, revealing their approach to algorithms and data structures.

- implicit constraints and trade-offs: The code itself is a record of decisions. A seemingly inefficient function might have been written that way to conserve memory, or a complex variable name might be necessary to distinguish it from a similar concept elsewhere in the application.

Taking the time to understand the "why" behind the code has a tangible benefit, making you a more effective developer. This leads to an effective maintenance and debugging. When you understand the original intent, you can fix bugs and add features without accidentally breaking the core logic. You know which parts are critical and why they were built that way.


Other code worth studying:
- [quantum espresso](https://github.com/QEF/q-e)
- [LAMMPS](https://github.com/lammps/lammps)
- [atomsk](https://github.com/pierrehirel/atomsk)