; Please define functions (fibonacci n) whose value is the n-th element of the Fibonacci sequence, one using recursion and again using accumulation.
; For both versions please show how the expression (fibonacci 4) is evaluated.

(define (fibonacci_rec n)
  (if (<= n 1)
    n
    (+ (fibonacci_rec (- n 1)) (fibonacci_rec (- n 2)))
   )
)

(fibonacci_rec 4)

; how it works:

; (fibonacci_rec 4)
; (+ (fibonacci_rec 3) (fibonacci_rec 2))
; (+ (+ (fibonacci_rec 2) (fibonacci_rec 1)) (+ (fibonacci_rec 1) (fibonacci_rec 0)))
; (+ (+ (+ (fibonacci_rec 1) (fibonacci_rec 0)) (fibonacci_rec 1)) (+ (fibonacci_rec 1) (fibonacci_rec 0)))
; (+ (+ (+ 1 0) 1) (+ 1 0))
; (+ (+ 1 1) 1)
; (+ (+ 1 1) 1)
; (+ 2 1)
; 3



(define (fibonacci_acc n acc cur)
  (if (<= n 0)
    acc
    (fibonacci_acc (- n 1) (+ acc cur) acc)
   )
)

(fibonacci_acc 4 0 1)

; how it works:

; (fibonacci_acc 4 0 1)
; (fibonacci_acc 3 1 0)
; (fibonacci_acc 2 1 1)
; (fibonacci_acc 1 2 1)
; (fibonacci_acc 0 1 3)
; 3