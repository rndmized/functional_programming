# Maj
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

## Requirements

```
Write a function maj in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise. 

For example:

 (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)

```


## Hamming Distance

```In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. In a more general context, the Hamming distance is one of several string metrics for measuring the edit distance between two sequences. A major application is in coding theory, more specifically to block codes, in which the equal-length strings are vectors over a finite field.```

<p align="right" bold>
<i>Source: <a href="https://en.wikipedia.org/wiki/Hamming_distance">Wikipedia</a></i>
</p>


## Racket Code


### Helper functions

The first function called distance returns 1 when the simbols provided are at least two 1 or more, in the case of binary (1,0) the addition of at least two 1 simbols will be always greater than 1 (either 2 or 3).

```

(define (distance n1 n2 n3) ( if(> (+ n3 (+ n1 n2)) 1 ) 
                            1
                            0
                        ))
```


### Hamming Distance function

Once we know whether two or three elements in the same position of the list are 1's we can recursively traverse the lists adding 1 to the list every time there are at least two 1's. As a condition for the recursive function to return we asume that the three lists have the same length to begin with.

```
(define (maj l1 l2 l3) (if(null? l1) 
                                '()      
                                (cons (distance (car l1) (car l2) (car l3)) (maj (cdr l1) (cdr l2) (cdr l3)))
                            ))

```

