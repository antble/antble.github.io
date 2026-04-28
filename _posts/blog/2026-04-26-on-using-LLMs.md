---
layout: post-others
title: On Using LLMs in Research
date: 2026-04-26
last_modified_at: 2026-04-28
category: [learning, research]
tag: [blog]
---


I started using LLMs more frequently at the beginning of the year, when they began to feel useful for answering technical questions. I only started using them seriously in my research around March. By then, they had become so good at programming that delegating some of that work to machines felt economical rather than merely convenient.

For programming, LLMs are useful for several reasons.

- They reduce repetitive code. 
  - There are diminishing returns to typing the same imports, headers, boilerplate, and function definitions again and again. 
  - After several years of programming, the pleasure comes less from the act of writing code and more from whether the code is correct, elegant, and well suited to the problem.

- They make it easier to focus on hypothesis generation and testing. 
  - When implementation becomes cheaper, one can test ideas more quickly, discard weak hypotheses earlier, and kill one's darlings without spending months trapped in debugging.
- They point toward a new workflow for computational science:
  `hypothesis -> code -> result -> revised hypothesis -> revised experiment`

  - This loop can, in principle, be handled by agents. 
  - I have not fully tried that yet, partly because I still derive satisfaction from controlling the flow myself rather than watching and waiting.

For learning science (physics/chemistry/mathematics), the barrier to entry has become much lower. 
  - It is now easier to learn only what you need, exactly when you need it. 
  - That can be a good strategy, especially when the goal is to solve a concrete problem. 
  - At the same time, creative work still depends on gathering knowledge from diverse fields. 
  - LLMs can accelerate that process too, but they should not replace the broader habit of intellectual wandering.
  - Go slowly enough that the structure of the thing forms in your mind.
    - The old rule is *festina lente*: make haste slowly. In learning, this means moving carefully enough that intuition has time to form. 
    - If you merely scan a problem and decide too quickly that it is not fertile, you may save time, but you also lose the kind of understanding that only comes from struggling with it.

Literature review has also become easier. 
  - The main risk is that LLMs can funnel attention into a narrow region of the literature [[3]](#hao2026). 
  - They are good at following the center of a topic, but less reliable for finding what sits at the edges: neglected ideas, strange exceptions, and papers outside the usual citation paths.

The goal of ARC-AGI is a promising step toward a more general problem solver: one capable not only of recognizing patterns, but of analyzing and generating new abstract concepts [[1]](#chollet2019), [[2]](#arcagi1).

# References

{% include references_using_llms.md %}
