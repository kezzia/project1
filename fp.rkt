#lang racket


(define (reverse-general L)
  (cond
    ((null? L) L)
    ((list? (car L))
      (display "list not empty and has nested list\n")
    )
    (else
      (append(cdr L)(list(car L)))
    )
  )
)



(reverse-general '())
(reverse-general '(a b c))
(reverse-general '(a b ()))
(reverse-general '((a b c)))
(reverse-general '((a b c) (d e f)))
(reverse-general '(a (b c) ((d e) f) g))
(reverse-general '(1 (2 3) (4 (a (b (c d)))))) 