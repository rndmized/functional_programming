# Sod2
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

## Requirements

```
Write a function sod2 in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
 
For example:
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)
 
```


## Racket Code


### The helper function

Check whether the there are all 0's or two 1's by adding all the numbers in an ***i*** position. The helper function returns either 1 or 0 accordingly.

```
(define (sod-helper n1 n2 n3) (if(= 0 (+ (+ n1 n2) n3))
                                0
                                (if(= 2 (+ (+ n1 n2) n3))
                                0
                                1
)))
```

### sod2 function

Recursive function that sends elements of the list of a given position and append the returning values from the helper function.

```
(define (sod2 l1 l2 l3) (if(null? l1) 
                                '()      
                                (cons (sod-helper (car l1) (car l2) (car l3)) (sod2 (cdr l1) (cdr l2) (cdr l3)))
                            ))
```