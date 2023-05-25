; Suppose the following definitions are given.

(define a 2)

(define (p a)
  (define (pp b)
    (set! a (+ b 1))
    (* a b))
  (pp 2)
)

; What is the value of the expression (p 5)? What is the value of a after evaluating (p 5)? Justify Your answers using the environment model

(p 5)

(define (pp b)
    (set! 5 (+ b 1))
    (* 5 b)
)
(pp 2)


(set! 5 (+ 2 1))
(* 3 2)

6

; a = 2 bo funkcja zmienia wartość zmiennej a wewnętrznej