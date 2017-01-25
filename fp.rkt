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
