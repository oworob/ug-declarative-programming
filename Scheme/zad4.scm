; Please define functions (odd? n) and (even? n) checking whether a natural number n is odd or even, resp. No built-in functions are allowed, except for #t, #f, zero? and a function "-1" calculating n-1.

(define helper 
  (lambda (n acc)
    (if (zero? n) 
        acc
        (if acc 
            (helper (- n 1) #f)
            (helper (- n 1) #t)
        )
    )
  )
)


(define even (lambda (n)
        ( helper n #t)
 )
)

(define odd (lambda (n)
    (helper n #f)
))

(odd 6)
(even 11)