; Please define a function (factorial n) whose value is n! using recursion.
; The factorial function can also be defined using an accumulator.
; Please show how the expression (factorial 4) is evaluated, once for the recursive version a) and again for version b).

(define (factorial n)
  (if (= n 1)
    n
    (* n (factorial (- n 1)))
   )
)

(factorial 4)


---- how it works:

(factorial 4)
(* 4 (factorial 3))
(* 4 (* 3 (factorial 2)))
(* 4 (* 3 (* 2 (factorial 1))))
(* 4 (* 3 (* 2 1)))
(* 4 (* 3 2))
(* 4 6)
24





(define (factorial_help n i acc)
    (if (< n i)
        acc
        (factorial_help n (+ i 1) (* i acc))
    )
)

(define (factorial n)
	(factorial_help n 1 1)
)

(factorial 4)


---- how it works:

(factorial 4)
(factorial_help 4 1 1)
(factorial_help 4 2 1)
(factorial_help 4 3 2)
(factorial_help 4 4 6)
(factorial_help 4 5 24)
24