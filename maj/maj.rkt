#lang racket

; Write a function hamming-distance in Racket that takes two lists and returns the
; number of positions in which they differ. For example:
;
; > (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
; 5

(define (distance n1 n2 n3) ( if(> (+ n3 (+ n1 n2)) 1 ) 
                            1
                            0
                        ))

(define (maj l1 l2 l3) (if(null? l1) 
                                '()      
                                (cons (distance (car l1) (car l2) (car l3)) (maj (cdr l1) (cdr l2) (cdr l3)))
                            ))

 (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
