; Please define a function (accumulate combiner null-value term a next b) generalizing functions sum i product: The arguments term, next, a, and b are the same as in the definitions of sum i prod.
; combiner is a two-argument function describing, how (term a) is tied together with the recursive result. null-value is the initial value used in the basic step of recursion.
; Please also show, how sum i product can be defined using accumulate.

; combiner -> co ma robic z wyrazami
; null-value -> wartosc na koncu rekurencji
; term -> co robi dla kazdego wyrazu
; a -> poczatek przedzialu i jednoczesnie akumulator
; next -> jak ma isc do nastepnego wyrazu
; b -> koniec przedzialu/ogranicznik

(define (accumulate combiner null-value term a next b)
	(if (> a b)
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b))

    )
)

(define (sum a b) (+ a b)) ; combiner for sum
(define (product a b) (* a b)) ; combiner for product
(define (inc n) (+ n 1)) ; next
(define (inc3 n) (+ n 3)) ; term

(accumulate sum 0 inc3 1 inc 5) ; <- sum (4 + 5 + 6 + 7 + 8 = 30)
(accumulate product 1 inc3 1 inc 5) ; <- product (4 * 5 * 6 * 7 * 8 = 6720)
