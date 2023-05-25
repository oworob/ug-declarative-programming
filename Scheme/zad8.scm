; The exponentiation b^e (for natural numbers b and e) can be quickly executed using b^e = (b^(e/2))^2.
; Using this property please define functions (exp b e) whose value is b^e, one recursive function and one using accumulation.
; For both versions please show how the expression (exp 2 6) is evaluated.

(define (exp_rec b e)
  (if (<= e 1)
    b
   	(* b (exp_rec b (- e 1)))
   )
)

(exp_rec 2 6)

; how it works:

; (exp_rec 2 6)
; (* 2 (exp_rec 2 5))
; (* 2 (* 2 (exp_rec 2 4)))
; (* 2 (* 2 (* 2 (exp_rec 2 3))))
; (* 2 (* 2 (* 2 (* 2 (exp_rec 2 2)))))
; (* 2 (* 2 (* 2 (* 2 (* 2 (exp_rec 2 1))))))
; (* 2 (* 2 (* 2 (* 2 (* 2 2)))))
; (* 2 (* 2 (* 2 (* 2 4))))
; (* 2 (* 2 (* 2 8)))
; (* 2 (* 2 16))
; (* 2 32)
; 64




(define (exp_acc b e acc)
  (if (<= e 0)
    acc
   	(exp_acc b (- e 1) (* acc b))
   )
)

(exp_acc 2 6 1)

; how it works:

; (exp_acc 2 6 1)
; (exp_acc 2 5 2)
; (exp_acc 2 4 4)
; (exp_acc 2 3 8)
; (exp_acc 2 2 16)
; (exp_acc 2 1 32)
; (exp_acc 2 0 64)
; 64

