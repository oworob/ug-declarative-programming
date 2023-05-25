; Please define functions (nwd a b) and (nww a b) whose values are the greatest common divisor and the least common multiple of (natural numbers) a and b.


(define (nwd a b) ; euklides rekurencja
(if (= b 0)
a
(nwd b (remainder a b)) ; <- else
)
)

(define (nww a b) ; ze wzoru nww(a,b) = a*b / nwd(a,b)
(/ (* a b) (nwd a b))
)


(nwd 10 15)
(nww 4 18)