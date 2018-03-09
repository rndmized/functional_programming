# List Cycler

This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

The List Cycler Exercise requires to write an algorithm that cycles a list either left or right, moving either the first element at the back of the list, or the last element to the front of the list as required.


```
 Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.
 
For example:
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)
> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)

 ```

## Racket Code

In order to complete the exercise a minimum of two functions are required: ***lcycle*** and ***rcycle***, due to the constrains of the exercice we need to create helper functions to add the functionality require for both of the base functions (***lcycle*** and ***rcycle***).


### The helper function

The helper function reverses a given list which allow us to play with the front and the end of the list.

```
(define (reverse-helper list item)
  (if (null? list)
      item
      (reverse-helper (cdr list) (cons (car list) item))))

(define (reverser list)
  (reverse-helper list '()))

```

### The **lcycle** and **rcycle** functions

For **lcycle**, by using the reverser (helper function) we can append the car to the reversed list, reverse it and take the cdr.

```
(define (lcycle l) (reverser (cons (car l) (reverser (cdr l)))))
```

For **rcycle**, by using the reverser (helper function) we can append the car of the reversed list, to the reverse cdr of the cdr of the list. ( *It might seem confusing but it works!* )

```

(define (rcycle l) (cons (car (reverser l)) (reverser (cdr (reverser l ))))) 

```