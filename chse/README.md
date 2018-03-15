# Chse
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

## Requirements

```
Write a function chse in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise. 

For example:
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1)

```

## Racket Code


### Helper functions

The first function called distance returns the elements in list **y** (***n2***) when the the elements of list **x** (***n1***) are 1 , and the elements in list **z** (***n3***) when 0.

```

(define (chse-helper n1 n2 n3) ( if(= n1 1 ) 
                            n2
                            n3
                        ))
```


### chse function

Whith the help of the previous function then, we iterate recoursively through the list appending the return value form the chse-helper.

```
(define (chse l1 l2 l3) (if(null? l1) 
                                '()      
                                (cons (chse-helper (car l1) (car l2) (car l3)) (chse (cdr l1) (cdr l2) (cdr l3)))
                            ))

```

