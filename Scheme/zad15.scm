; Please show how the following expression ((comb square double) 5) is evaluated.

(define (comb f g)
   (lambda (x) (f (g x)))) ; lambda -> ta funkcja zwraca funkcje

(define (square n) (* n n))

(define (double n) (+ n n))


-----------------------------

((comb square double) 5)
(square (double 5))
(square (10))
(square 10)
100