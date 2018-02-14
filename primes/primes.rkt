#lang racket

; Write, from scratch, a function in Racket that uses a brute-force 
; algorithm that takes a single positive integer and return true if 
; the number is a prime and false otherwise. Call the function decide-prime.

; Formula: 2<a < n-1
; a^n (mod n) = a(mod n) 
; => most likely a prime

;The simplest primality test is trial division: Given an input number n, 
; check whether any prime integer m from 2 to √n evenly divides n (the division leaves no remainder). 
; If n is divisible by any m then n is composite, otherwise it is prime.


(define (prime-helper n d) (if(< d 2) #t (if(= 0 (modulo n d)) #f (prime-helper n (- d 1)))))

(define (decide-prime n) (prime-helper n (floor (sqrt n))))

(for([i (in-range 2 101)])(print i)(print '->)(println (decide-prime i)))

