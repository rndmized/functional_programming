#lang racket

; Write a function hamming-distance in Racket that takes two lists and returns the
; number of positions in which they differ. For example:
;
; > (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
; 5

(define (distance n1 n2) ( if(= 1 (+ n1 n2)) 
                            1 
                            0
                        ))

(define (hamming-distance l1 l2) (if(null? l1) 
                                0      
                                (+ (distance (car l1) (car l2)) (hamming-distance (cdr l1) (cdr l2)))
                            ))

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))