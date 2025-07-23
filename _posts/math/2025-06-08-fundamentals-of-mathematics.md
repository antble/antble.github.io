---
layout: post-others
title: Fundamentals of Mathematics
date:  2016-01-01
last_modified_at: 2025-06-08
category: math
tag: math, fundamentals
---


I find the book of Thomas Garrity, <i>All the Mathematics You Missed</i> enlightening as you cover the first few pages and encounters the section on the structure of mathematics. 
Here the main points: 
- equivalence problems: when are things the same, or when are they equivalent? 
  - introducing the concpet of "Objects" together with the notion of "Equivalence" between these objects. 
  - thus for each chapter of the book, Garrity introduces the object and the maps between the objects which are key for that chapter 
  - notion of invariance 
- study of functions: "function describe the world" 
  - in learning a new area of mathematics, you should always "find the function" of interest. 

**Components of mathematics**
- axioms, definitions, theorems
  - axiom: used to capture intuitive notions
  - definition: a precise statement of the meaning of a mathematical wrod
    - note: each definition defines a single concept
    - precision is important in definitions
  - theorems: statement about a relationship between some mathematical concepts
    - to understand a theorem, identify their premises and conclusions
      - e.g., premises are flagged by the word `Suppose', 'Let'
        - we can often gain insight into why a premise is included by thinking about what would go wrong if it were not
      - e.g., conclusion are flagged by the word 'Then'
    - systematically seek examples that demonstrate why each premise is needed
    - conditional statements in theorems: if ... then ...
    - biconditional statemes in theorems: ... if and only if ...
    - converse of a theorem is not always the same with the theorem 
  - Symbols: 
    - 'implies' $\implies$, 
    - 'if and only if' or 'is equivalent to' $\iff$
- Proofs: a convincing argument that something is true 
  - proving amounts, as always, to showing that the conclusion follows from the premise
    - we can often make progress by writing down the premises and conclusion in terms of the relevant definitions, then looking for a way to get between the two. 
  - general strategies for making sense of proofs presented in lectures/textbooks -- these strategies can(and should) be applied whenever you encounter a proof in analysis
  - note: theory $\neq$ theorem 
  - theory is a network of interconnected axioms, definitions, theorems, and proofs. 
  - quite a few theorems amount to a statement that can be proved by satisfying one definition, satifying another one. It is often possible to make progress by writing down what the premises mean in terms of definitions, writing down what the conclusion means in terms of definitions, then working out how to get between the two. 

**Structure of Mathematical Theory** 

- mathematical theories are developed over time, and this is not linear. 
- mathematician value theory building -- they want everything to fit into a coherent overall structure, which means axioms, definitions, theorem, and proofs are adjusted as groups of mathematician come to agree on effective ways to capture both individual concepts and important logical relationships. 
<div class="my-container">
<img src="{{ site.baseurl }}/assets/math/basic.png" alt="Visualization of how physical laws are conceived">
</div>
- think of mathematical definitions and axioms as 'basic' in the sense that they form the bottom layer of the theory's building blocks.  
  - starting at the very bottom does tend to make students feel disoriented
  - start with definitions and study them in details but don't mention axioms at first, then practice proving things on the basis of definitions
  - by then you will appreciate the systematic reasoning within a network of results

- we could think of a theorem like this as adding a new block to the theory that sits above just one definition, or perhaps that uses one definition and an axiom (maybe an axiom about addition or inequalities). 
  - later theorems will involve multiple concepts
<div class="my-container">
<img src="{{ site.baseurl }}/assets/math/math.png" alt="Visualization of how physical laws are conceived">
</div>
- building blocks of mathematical theories: axioms, definitions, and theorems. 
- proofs doesnt need definition directly because once we have proved a theorem, it stays proved
- with the bottom layer in place, new blocks at higher levels take the form of theorems, where each theorem say something about a relationship between concepts from the preceding levels. 

<div class="my-container">
<img src="{{ site.baseurl }}/assets/math/math2.png" alt="Visualization of how physical laws are conceived">
</div>

**On Proofs** : 
- if you don't understand the theorem, you won't understand its accompanying proof
  - if you don't know what the author of the proof was trying to establish, how will you know that they've convinced you that they've done it? 
- Don't think of a proof as an isolated entity, think of it as belonging to a theorem, and make sure that you understand what the theorem says first. 
- how to study proof?
  - self-explanation training?? 
  - how to self-explain? 
    1. try to identify and elaborate the main ideas in the proof 
      - attempt to explain each line in terms of previous ideas, these may be ideas from the information in the proof, example from previous theorem/proofs, or ideas from your own prior knowledge of the topic area
      - consider any questions that arise if new information contradicts your current understanding 
    2. before proceeding to the next line of the proof you should ask yourself the following: 
      - do i understand the ideas used in that line? 
      - do i understand why those ideas have been used? 
      - how do those ideas link to other ideas in the proof, other theorems, or prior knowledge that i may have? 
      - does the self-explanation I have generated help to answer the questions that I am asking? 

---
{% include references_math.md %}