# Hamming Distance
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

## Requirements

```
Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which 
they differ.

For example:

> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5
```


## Hamming Distance

```In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. In a more general context, the Hamming distance is one of several string metrics for measuring the edit distance between two sequences. A major application is in coding theory, more specifically to block codes, in which the equal-length strings are vectors over a finite field.```

<p align="right" bold>
<i>Source: <a href="https://en.wikipedia.org/wiki/Hamming_distance">Wikipedia</a></i>
</p>


## Racket Code


### Helper functions

The first function called distance returns 1 when the simbols provided are different, in the case of binary (1,0) the addition of two different simbols will be always 1.

```
(define (distance n1 n2) ( if(= 1 (+ n1 n2)) 
                            1 
                            0
                        ))
```




### Hamming Distance function

Once we know whether two elements in the same position of the list are different we can recursively traverse the lists adding 1 for every different symbol. As a condition for the recursive function to return we asume that both lists have the same length to begin with.

```
(define (hamming-distance l1 l2) (if(null? l1) 
                                0      
                                (+ (distance (car l1) (car l2)) (hamming-distance (cdr l1) (cdr l2)))
                            ))

```







```
(define (hamming-distance l1 l2) (hamming-distance-helper l1 l2) )
```


