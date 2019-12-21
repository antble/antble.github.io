---
layout: post
title: "Introduction to Cryptocurrency"
date: 2017-11-07
category: programming
tag: cryptography
---

<div style="text-align: justify;">
Lately, the idea of cryptocurrency and blockchain as a disruptive technology has caught on, somehow overshadowing the fame of 'deep learning'. The fame of bitcoin has catapulted the science of cryptography to the public.  I've read the work of Satoshi Nakamoto, <a href="https://bitcoin.org/bitcoin.pdf">Bitcoin: A Peer-to-Peer Electronic Cash System</a>, but I don't get it. Last month, I decided to invest time to get an idea of how cryptocurrency works. This article is my personal notes about cryptocurrency I've learned from the course, <a href="https://www.coursera.org/learn/cryptocurrency">Bitcoin and Cryptocurrency Technologies of Princeton University</a>. 
</div>

**A. Bitcoin: A Peer-to-Peer Electronic Cash System**

Concepts of Cryptocurrecy: 
1. transactions
2. timestamp server
3. proof-of-work
4. network 
5. Incentive
6. Reclaiming Disk Space
7. Simplified Payment Verification


<br><br>
**B. Bitcoin and Cryptocurrency Technologies**

Basic Ideas to be familiar: (high level)
1. hash function
first cryptographic primitive

2. hash pointers and data structure

* pointer to where some info is stored,
* we can use it to retrieve the info, and verify that it wasn't tampered or changed.
build data structure using a hash pointer

use-case:tamper-evident log build from a block chain

binary tree with hash pointers: a "Merkle tree"
advantage: 
holds many items but to remember we just need the root hash, 
can be verified in 0(log n) time/space

can use hash pointers in any pointer-based data structure that has no cycles

3. digital signatures\
second cryptographic primitive
2 things we need from signature

a. unique
b. tied to a particular document, can be cut and paste

API for digital signatures:
(a signature scheme)
(sk, pk) := generateKeys(keysize)
sig := sign(sk, message)
isValid := verify(pk, message, sig)

practical stuff:
a. randomized the algo. : a good source of randomness is required
	bitcoin uses ECDSA standard:
	Elliptic Curve Digital Signature Algo. - a hairy math !!

b. limit the message size, use Hash(message) rather than the message
c. attached a signature to teh hash pointer, this will cover the whole data structure



4. public key as Identities
useful trick: public key == an identity
to "speak on behalf of the pk" you need a secret key, sk. 

* pk is the public "name" you can use
* sk lets you "speak for" the identity

you control the identity if you have the sk. 

decentralized identity management:
 - there is no limit in identity creation, anytime. 
 - there is no point of control on the identity creation, in cryptocurrency it is an address

Privacy: 
addresses are not directly to your real-world identity
but observer can make inferences through observations based on your activities


Simple Cryptocurrency: 
 -- to give us ideas how bitcoin works

ex: GoofyCoin
* goofy can create new coins
* new coins belong to goofy
    signed by pk_goofy
    CreateCoin(uniqueCoinID)

* it can be passed to other user
	signed by pk_goofy
	pay to pk_alice: H(pointer to goofy coins)

-- the recipient can pass on the coin to other

** double-spending attack if not solved, it is not secure
 -- the main challenge in designing cryptocurrency

the main design challenge in digital currency is to solve double-spending attack 

scrooge published a history of all transactions: a block chain, signed by scrooge
optimization: put multiple transactions in the same block 

two kinds of transaction
1. CreateCoin transaction creates new coins
2. PayCoins transaction consumes (and destroy) some coins and creates new coins of the same total value

* coins are immutable, cant be transferred, subdivided, or combined.  
we can get the same effect by using transactions to subdivide:


crucial question: can we get rid of a central authority?

how everyone can agree upon a transaction history? How can we decentralized it?

Mechanics of Bitcoin: (less technical, low level)
Bitcoin consensus:
 - append-only ledger
 - decentralized consensus
 - miners to validate transactions

 Fundamental Building block: transaction 

A simplified transaction: only one transaction per block
 create 25 coins -> credit to Alice

 Alice (25 coins) (17)-> Bob (0 coins)
 Bob (17 coins) (8)-> Charlie (0 coins)
 Charlei (8 coins) -> Alice (8 + 5)
 
 * transfer 15 coins from Alice to David (is this valid)

 each transaction has a unique identifier

 finite scan to check for validity - we implement this with hash pointers
  - joint payments (requires two signature)
  - merging values

  **bitcoin script**
  each transaction output does not only specify a simple public key, it also specify a script.
  what is bitcoin scripting language is?
   -- output "addresses" are really scripts

  bitcoin scripting language: (not a turing complete language, so no halting problem)
  1. built for bitcoin 
  2. simple, compact
  3. support for cryptography
  4. stack-based
  5. limits on time/memory
  6. No looping (no loop functions)

 -256 opcodes (15 disabled, 75 reserved)
  - arithmetic
  - if/then
  - crypto functions

proof-of-burn : nothing's going to redeem that
"pay to script hash"
<br>
<br>

**To be continued ..**

Last Update: 17/11/2017