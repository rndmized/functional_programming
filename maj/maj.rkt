#lang racket

; Write a function maj in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where two or more
; of x, y and z contain 1’s, and 0 otherwise. 
; 
; For example:
; 
;  (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 0 0 1 0 1 1 1)

(define (distance n1 n2 n3) ( if(> (+ n3 (+ n1 n2)) 1 ) 
                            1
                            0
                        ))

(define (maj l1 l2 l3) (if(null? l1) 
                                '()      
                                (cons (distance (car l1) (car l2) (car l3)) (maj (cdr l1) (cdr l2) (cdr l3)))
                            ))

 (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
