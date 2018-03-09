# Collatz List

This is a solution for CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development). 

As part of the challenge the excercises require to write code **"from scratch"**.

```
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.
```
The Collatz Lits Exercise requires to write an algorithm that calculates the Collatz conjecture returning a list containig the resulting sequence.


```
 Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list 
 by recursively applying the following operation, starting with the input number.
 ```

<p align="center">
<img src="https://image.ibb.co/jq4CDS/Tex2_Img_1520537907.png" width="150">
</p>

```
End the recursion when (or if) the number becomes 1. Call the function collatz-list. So, collatz-list should 
return a list whose first element is n0, the second elementis n1, and so on.

For example:
> (collatz-list 5)
'(5 16 8 4 2 1)
> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
> (collatz-list 2)
'(2 1) 
```

## The Collatz Conjecture

```The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined as follows: start with any positive integer n. Then each term is obtained from the previous term as follows: if the previous term is even, the next term is one half the previous term. Otherwise, the next term is 3 times the previous term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.```

```The conjecture is named after Lothar Collatz, who introduced the idea in 1937, two years after receiving his doctorate. It is also known as the 3n + 1 conjecture, the Ulam conjecture (after Stanisław Ulam), Kakutani's problem (after Shizuo Kakutani), the Thwaites conjecture (after Sir Bryan Thwaites), Hasse's algorithm (after Helmut Hasse), or the Syracuse problem; the sequence of numbers involved is referred to as the hailstone sequence or hailstone numbers (because the values are usually subject to multiple descents and ascents like hailstones in a cloud), or as wondrous numbers.```

<p align="right" bold>
<i>Source: <a href="https://en.wikipedia.org/wiki/Collatz_conjecture">Wikipedia</a></i>
</p>

## Racket Code

The code for this excercise is a simple funtion that takes a number *n* and calls itself recursively while *n* is greater than 1, and appends to the returning list every permutation of *n* that results of the formula:

<p align="center">
<img src="https://image.ibb.co/jq4CDS/Tex2_Img_1520537907.png" width="150">
</p>


```
(define (collatz_list n) (if(> n 1) 
                            (cons n (collatz_list (if(odd? n) 
                                                    (+ (* n 3) 1) 
                                                    (/ n 2)))) 
                            (cons 1 null)))
```
