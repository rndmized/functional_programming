# Sub-List Sum
This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
``` 

For this exercise the use of the built-in function combinations is allowed.

```
Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of 
it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the 
sublists and their elements doesn’t matter. 

For example:
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))
> (sublsum (list 1 2 3 4 5))
'()
```


## Racket Code

In order to give a solution we must take into acount that if combinations return a list of all combinations of elements in the input list (aka the powerset of lst), if the sum of the elements of any of the combinations is equal to 0 then we add such sublist to a list and then return such list containing the subsets of the list that add up to 0. 

We can break down the algorithm into two helpers plus the ***sublsum*** function.

### Recursive sum

This function will return the sum of the elements of the list by recursevely adding its members.

```
(define (recursive-sum l) (if (null? l)
                                0
                                (+ (car l) (recursive-sum (cdr l)))
                            ))
```


### Sublsum helper

By using the above function, check whether the sum of the element of a list amounts to *zero* and append such element to a list, recursively until the list of elements is empty.

```
(define (sublsum-helper l) (if(null? l) 
                                '()      
                                (if(= 0 (recursive-sum (car l) ) ) 
                                    (cons (car l) (sublsum-helper (cdr l)) )
                                    (sublsum-helper (cdr l))
                                )
                            ))
```


### Sublsum funtion

Using both of the previous functions, ***sublsum*** function calls its helper passing as arguments the combinations of the sub-elements of a provided list.

```
(define (sublsum l)  (sublsum-helper (combinations l)))
```