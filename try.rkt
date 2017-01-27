#lang racket

(define (sum-up L)
 (cond
  ((null? L) 0)
  ((not (list? L)) (+ (sum-up(car L)) (sum-up(cdr L))))
  (else (cdr L);(append ((cdr L) (car L))
        )
  )
 )
;)



(sum-up'()) ;0
(sum-up'(100)) ;100
(sum-up'(100 200)) ;300
(sum-up'(a)) ;0
(sum-up'(a 100 b 200 c 300 d)) ;600
(sum-up'(())) ;0
(sum-up'((100))) ;100
(sum-up'(100 (200))) ;300
(sum-up'(a 100 b (200) c 300 d)) ;600 