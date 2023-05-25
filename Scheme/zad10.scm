; Please define a function (product term next a b) analogous to function sum (lecture).
; Please show, how the function product can be used to define both function silnia and for the approximation of p using the formula   p/4 = 2 · 4 · 4 · 6 · 6 · 8 ··· / 3 · 3 · 5 · 5 · 7 · 7 ··· .

; operujemy na ciagu liczb od a ... b
; term <- dzialanie wykonywane na kazdym wyrazie ciagu
; next <- zwiekszanie a (mowi o ile 'skaczemy' w tym przedziale np. a+2 -> co drugi)
; a <- obecny wyraz (na poczatku pierwszy wyraz w przedziale)
; b <- koniec przedzialu (sluzy tylko do ograniczenia i jest przekazywany dalej)

(define (sum term next a b) 
    (if (> a b)
        0
        (+ (term a) (sum term next (next a) b))

    )
)

(define (inc n) (+ n 1)) ; next
(define (dec n) (- n 1)) ; term

(sum dec inc 1 5)
; 1-1 + 2-1 + 3-1 + 4-1 + 5-1  =  0 + 1 + 2 + 3 + 4 = 10


; -----------------------------------------

(define (product term next a b) 
    (if (> a b)
        1
        (* (term a) (product term next (next a) b))

    )
)

(define (inc n) (+ n 1)) ; next
(define (inc3 n) (+ n 3)) ; term

(product inc3 inc 1 5)
; 1+3 * 2+3 * 3+3 * 4+3 * 5+3  =  4 * 5 * 6 * 7 * 8  =  6720


; -----------------------------------------

(define (inc n) (+ n 1)) ; next
(define (term n) n) ; term

(define (silnia n) (product term inc 1 n))
(silnia 5)
; 1 * 2 * 3 * 4 * 5 = 120

; -----------------------------------------

(define (inc n) (+ n 1)) ; next
(define (term n) (/ (* 4 (* n n)) (- (* 4 (* n n) ) 1))) ; term

(define (pi n) ( * 2 (product term inc 1 n)))
(pi 500)