; In Scheme one can define functions with an arbitrary number of arguments:
   ;(define (f x y z . l) (...))
; means, that function f has at least three arguments (x,y and z). If f is called with more than three arguments the remaining ones are collecte in list l .

; a) Please define a function plus, which sums up any number of numbers.

(define (plus . numbers)
   (cond
      ((null? numbers) 0)
      (else (+ (car numbers) (apply plus (cdr numbers)))) ; apply zamienia liste na osobne argumenty przekazane do funkcji
   )
)

(plus 1 2 3)

; b) Please define a function par for an arbitrary number of (one-argumented) functions fi.
; Function par returns a (one-argumented) function, which for an argument x returns a list of all fi(x).
; Example:
;    > ((par id square cube) 3)
;    (3 9 27) 
;    > ((par double double) 5)
;    (10 10)

(define (square x)
   (* x x)
)

(define (double x)
   (* 2 x)
)

(define (par . funcs)
   (cond
      ((null? funcs) '())
      (else 
         (lambda (x)
            (cons (par . (cdr funcs)) ((car funcs) x))
         )
      )
   )
)
  

((par double square) 5)