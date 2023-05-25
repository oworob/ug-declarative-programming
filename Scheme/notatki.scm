; https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html

; DEKLARACJA ZMIENNYCH
(define a 5) 
(define b 4) 


; FUNKCJE
(define (sum3 a b c)
(+ a b c)
)
; (sum3 1 2 3)

(define (are_equal x y)
(= x y)
)
; (are_equal 3 5)


; WYSTWIETLANIE
(display "a = ")
(display a)
(display "\nb = ")
(display b)


; WARUNKI
(cond
    ((= n 0) #f) ; <- if
    ((= n 1) #t); <- else if
    (else ("n is not binary"))
)

(if (= a 0)
a ; <- if true
(a+1) ; <- else (if false)
)