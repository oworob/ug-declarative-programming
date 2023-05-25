; Suppose the following definitions are given.
(define m 1)

(define (p m)
    (pp 5)
)

(define (pp x)    
    (+ x m)
)


(define n 1)

(define (q n)
    (define (qq x)
      (+ x n)
    )
    (qq 5)
)

; What are the values of the expressions (p 11) and (q 11)? Justify Your answers using the environment model.

(p 11) ; m lokalne > m globalne
(pp 5)
(+ 5 1)
6


(q 11)
(qq 5)
(+ 5 11)
16
