# Lsqt

This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
```


The lsqt Exercise requires to write an algorithm that subtract elements of the list in a given position and square them, then add them together.

```
 Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing 
 numbers. It should return d, the distance given by the sum of the square residuals between the numbers 
 in the lists.

This means take the ith element of m from the ith element of l and square the result for all i. Then add 
all of those to get d. 
For example:

> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61

 ```

## Racket Code

### The helper function


***residual-sum*** function returns (n1-n2)^2.

```
(define (residual-sum n1 n2) (* (- n1 n2) (- n1 n2)))
```



### lstq

Recursively add the returning value of ***residual-sum***.

```
(define (lstq l1 l2) (if(null? l1) 
                                0      
                                (+ (residual-sum (car l1) (car l2)) (lstq (cdr l1) (cdr l2)))
                            ))
```