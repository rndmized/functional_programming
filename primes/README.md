# Prime Numbers

This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

The Prime Numbers Exercise requires to write an algorithm to determine whether a number is prime or not.

```Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.```

In order to do so we will appy the following:

Given an input number n, check whether any prime integer m from 2 to √n evenly divides n (the division leaves no remainder). If n is divisible by any m then n is composite, otherwise it is prime.


 Formula: 2 < a < n-1 a^n (mod n) = a(mod n)  => most likely a prime


## Racket Code

The algorithm is composed by two functions. The first one (*decide-prime*) takes as an argument (*n*) and calls its helper passing in both *n* and the square root of *n*.


``` 
(define (decide-prime n) (prime-helper n (floor (sqrt n))))
``` 

The helper (*prime-helper*) divides recursively *n* by *d* -1 for each cycle, if the remainder of any of the divisions is *zero* return false (*#f*), else the number is prime thus returns true (*#t*).

 ``` 
 (define (prime-helper n d) (if(< d 2) 
                                #t 
                                (if(= 0 (modulo n d)) 
                                    #f 
                                    (prime-helper n (- d 1)))) 
```
