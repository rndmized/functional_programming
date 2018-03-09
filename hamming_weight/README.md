# Hamming Weight
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

## Requirements

```
Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero 
elements in it. 

For example:

> (hamming-weight (list 1 0 1 0 1 1 1 0))
5
```


## Hamming Weight

```The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. For the most typical case, a string of bits, this is the number of 1's in the string, or the digit sum of the binary representation of a given number and the ℓ₁ norm of a bit vector. In this binary case, it is also called the population count, popcount, sideways sum, or bit summation.```

<p align="right" bold>
<i>Source: <a href="https://en.wikipedia.org/wiki/Hamming_weight">Wikipedia</a></i>
</p>


## Racket Code


This function will return the sum of the elements of the list by recursevely adding its members, since we are using binary digits, the non-zero elements are 1's, thus the sum of the non-zero elements of the list will be equal to the hamming weight.

```
(define (hamming-weight l) (if (null? l)
                                0
                                (+ (car l) (hamming-weight (cdr l)))
                            ))
```


