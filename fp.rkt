#lang racket

;QUESTION 1: Given a list (sometimes nested), this function reverses the order of the list
(define (reverse-general L)
  (cond
    ((null? L)L) ;if the list is empty it just returns the empty list
    ((list? L) ;if the list is not empty, pop off the first element until only one remains in the list, append the first elements one by one  
      (append (reverse-general (cdr L))(list (reverse-general (car L)))
    ))
    (else L) ;return the list
  )
)

(define (sum-up L)
  (cond
    ((null? L) 0)
    ((list? L)
       (display "L is not empty\n"))
  )
)

(sum-up'()) ;0
(sum-up'(100 200)) ;300
(sum-up'(a b c)) ;0
(sum-up'(100 a)) ;100
(sum-up'(a 100)) ;100
(sum-up'(a 100 b 200 c 300 d)) ;600
(sum-up'(())) ;0
(sum-up'((100))) ;0
(sum-up'(100 (200))) ;100
(sum-up'(a 100 b (200) c 300 d)) ;400 