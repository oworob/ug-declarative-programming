; Please define a function (root f a b) approximating a root of f between a and b using the half-interval-method.

(define (avg a b)
  (/ (+ a b) 2)
)


(define (root f a b)
  	(define c (avg a b))
	(cond 
    	((= (f c) 0) c)
     	((< (abs (f c)) 0.01) c) ; good enough
     	((> (f c) 0) (root f a c))
        (else (root f c b))
    )
)


(define (fun x)
  (- x 5)
)

(root fun 2 11)
; 5.005859375 ~ 5