#lang racket

; Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
; list as input and returns the list cyclically shifted one place to the left. The second
; is called rcycle, and it shifts the list cyclically shifted one place to the right.
; For example:
; > (lcycle (list 1 2 3 4 5))
; '(2 3 4 5 1)
; > (rcycle (list 1 2 3 4 5))
; '(5 1 2 3 4)

(define (lcycle l) (append (cdr l) (list (car l))))


(define (reverse-helper list item)
  (if (null? list)
      item
      (reverse-helper (cdr list) (cons (car list) item))))

(define (reverser list)
  (reverse-helper list '()))


(define (rcycle l) ( cons (car (reverser l))  (reverser (cdr (reverser l ) ) ) ) ) 

(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))