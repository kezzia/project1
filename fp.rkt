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

(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0) ;if the list is empty return 0
    ((list? L) ;if the list is not empty
       (if (not(number? (car L))) ;check if the first entry is a number
          (sum-up-numbers-simple(cdr L)) ;if the first entry is not a number, we ignore it and continue to the rest of the list
          (+(car L)(sum-up-numbers-simple (cdr L))));if the first entry is a number, we keep it and add it to the first entry numbers of the other calls
    )
  )
)

(define (sum-up L)
  (cond
    ((null? L) 0) ;if the list is empty return 0
    ((list? (car L)) ;checks to see if the element it grabbed is a nested list
        (+ (sum-up (car L)) (sum-up(cdr L)))) ;if so, enter it and return the sum of its contents
    ((number? (car L)) (+ (car L) (sum-up (cdr L)))) ;if the element is a number, then it's ok to add it normally
    (else (sum-up(cdr L)))
  )
)

(sum-up'()) ;0
(sum-up'(100)) ;100
(sum-up'(100 200)) ;300
(sum-up'(a)) ;0
(sum-up'(a 100 b 200 c 300 d)) ;600
(sum-up'(())) ;0
(sum-up'((100))) ;100
(sum-up'(100 (200))) ;300
(sum-up'(a 100 b (200) c 300 d)) ;600 
