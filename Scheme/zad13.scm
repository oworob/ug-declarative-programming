; Please show how the following expressions are evaluated.
; a) (f square)
; b) (f (lambda (z) (+ z (* 3 z)))
; c) (f f)

(define (f g) (g 2))


(define (square n) (* n n)) ; square has to be defined
(f square)
; (square 2) -> 4


(f (lambda (z) (+ z (* 3 z))))
; z = 2 -> (+ 2 (* 3 2)) -> (+ 2 6) -> 8


(f f)
; (f f) -> (f 2) -> (2 2) (cannot call 2)