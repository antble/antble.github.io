---
layout: post
title: "The Elements of Computing"
date: 2020-04-04
category: programming
tag: computing
---

*The Elements of computing* is one of the most comprehensive course I've taken online. The book used is *The Elements of Computing Systems: Building a Modern Computer from First Principles* which covers the fundamental elements of a computing system, starting from hardware to the operating system down to building one's programming language. 
<br/>
<br/>
I've covered the first five chapters on hardware, starting from fundamental logic gates to the building of the central processing unit. It took seven days to cover the whole course as I work my ass around the chapters per day. Mostly doing the lecture videos in the morning and doing the project in the afternoon. 
<br/>
<br/>
Here is my take away from that grueling seven days of computer hardware elements exposure: 

## Hardware: 

### Day 1: Boolean Functions and Gate Logic

The start of the class discusses basic logic gates, and from it went up to a complicated multi-bit version of the basic gates. As was promised by the course, the starting gate of everything was the `Nand` gate - hence it is called Nand2Tetris. 

The two main multi-way gates I learn is the multiplexor and the demultiplexer logic gates. They are fundamental logic gates as they provide control to the hardware. A multiplexor takes multiple inputs and outputs a single value. A demultiplexer, on the other hand, works in reverse with a multiplexor. It takes a single input value and outputs several possible values. 



### Day 2: Boolean Arithmetic and the ALU

In this day, we build gate logic designs that represent numbers and perform arithmetic operations on them.  One of the most interesting takeaways I got from this section is the idea that the four basic operations on scalar numbers (addition, subtraction, multiplication, division) can just be reduced into a single operation - just addition. The "subtraction" is made possible by the introduction of negative numbers. 

And the amazing part of this addition and subtraction relationship is that the addition of binary representation applies to the binary addition of negative numbers in its corresponding binary representation (signed binary numbers).

###  Day 3 - 4 : Memory (Sequential Logic)

All chips build in days 1 and 2 were combinatorial. Combinatorial chips compute functions that depend solely on combinations of their input values. On day 2, we focus on building the ALU unit for our computers. Today, we want to focus on building a memory - a RAM.

### Day 5: Machine Language

On this day, we learn how to specify the hardware instruction. 

One important thing I learn from this class is that every key in a keyboard is a mapping into a numerical value that was agreed upon by some made-up committee. The screen is also a mapping into some screen memory map where every pixel coordinate in a screen corresponds to a particular memory in the RAM. 

### Day 6 - 7: Computer Architecture 

On this final day, we build complete computer hardware with instruction memory, CPU, and data memory with peripherals such as a screen and a keyboard. Constructing the computer is the most labor-intensive activity in the course since it covers all the topics of the previous days and is a culmination of all the efforts.











