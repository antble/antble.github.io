---
layout: post
title: "Fundamentals of Programming"
date: 2017-09-07
category: programming
tag: fundamentals
---

The goal of this article is to provide a simplified framework for dealing all programming languages. In my years of studying different programming languages, alongside with mathematics, I found that they share the same structure. These transferable mental structure have speed up my understanding of any new language I encounter.

## Static Concepts in Programming
In the realm of programming, the whole field can be simplified by thinking of two main players, the <b>data type (object of study)</b> and the <b>functions (method)</b>. The data are objects upon which we operate our functions to generate another data.

**Data type:** a classification of data that determines how the compiler or interpreter will process the data. It defines the allowable operations on the data, the meaning of the data, and how the data can be stored.

There are two kind of data type: the `primitive data type` and the `data structure`.

Primitive data type:
- character, integer, floating-point number, boolean

Data structure:
- array, linked list, record, union, dictionary, tuple

Data structures are generally built upon primitive data type. In simple terms, data structure is just a set of data values of primitive data type. Its strength is that it allows programmer to have a proper data organization, management for efficient access and manipulation.

**Function:** a clustered sequence of operation to perform a well defined action. Different programming languages uses different terminology for functions: methods, sub-routines, procedures. Function introduces a key concept in programming called scope.


## Dynamic Concepts in Programming
The dynamics of data and function is provided by the looping and iteration rules. The ‘for’ loop and ‘while’ loop are some example of providing a dynamic to the whole program. This dynamics allow the programming language to solve problems in a faster way. These dynamics provide the DRY (don't repeat yourself) principle a role in programming.


## Language Paradigms
The different language paradigms developed over the years are developed due to the developer’s different mind-set of what to emphasize, data or functions.

A. Object-oriented languages are more inclined to think that everything in the universe is an object.

B. The functional language thinks that everything in the universe can be expressed using function. The essence of functional programming is that programs are a combination of expression. Expression includes concrete values, variables, and also functions. [1]

C. Imperative paradigm in a nutshell can be expressed as "first do this and next do that". [2]

[1] Haskell Programming from first Principle <br>

[2] http://people.cs.aau.dk/~normark/prog3-03/html/notes/paradigms_themes-paradigm-overview-section.html
