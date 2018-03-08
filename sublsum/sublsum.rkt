#lang racket

; Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the
; combinations built-in function. Note the order of the sublists and their elements
; doesn’t matter. For example:

; > (sublsum (list 1 2 3 4 -5))
; '((2 3 -5) (-5 1 4))

; > (sublsum (list 1 2 3 4 5))
; '()

; So, if combitaions return a list of all combinations of elements in the input list (aka the powerset of lst), 
; if the sum of the elements of any of the combinations is equal to 0 then add such sublist to a list and then return
; list containing the subsets of the list that add up to 0;

(define (recursive-sum l) (if (null? l)
                                0
                                (+ (car l) (recursive-sum (cdr l)))
                            ))


(define (sublsum-helper l) ( if(null? l) 
                                '()      
                                (if(= 0 (recursive-sum (car l) ) ) 
                                    (cons (car l) (sublsum-helper (cdr l)) )
                                    (sublsum-helper (cdr l))
                                )
                            )  )


(define (sublsum l)  (sublsum-helper (combinations l)))


(sublsum (list 1 2 3 4 -5))