#lang racket

; Write, from scratch, a function in Racket that takes a positive integer n0 as input
; and returns a list by recursively applying the following operation, starting with the
; input number.
;  ni+1 = { 3ni + 1 if ni is odd
;         { ni ÷ 2 otherwise
; End the recursion when (or if) the number becomes 1. Call the function collatz-list.
; So, collatz-list should return a list whose first element is n0, the second element
; is n1, and so on. 

; For example:
; > (collatz-list 5)
; '(5 16 8 4 2 1)
; > (collatz-list 9)
; '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
; > (collatz-list 2)
; '(2 1)

(define (collatz_list n) (if(> n 1) (cons n (collatz_list (if(odd? n) (+ (* n 3) 1) (/ n 2)))) (cons 1 null) ))

(collatz_list 9)