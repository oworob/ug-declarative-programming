; a) Please complete the definition of function deriv as presented in the lecture.


(define (sum? exp)
    (if (not (atom? exp))
        (eq? (car exp) '+)
        (error "...")
    )
)

(define (product? exp)
    (if (not (atom? exp))
        (eq? (car exp) '*)
        (error "...")
    )
)

(define (constant? exp)
    (and (atom? exp) (not (eq? exp 'x)))
)

(define (variable? exp)
    (eq? exp 'x)
)

(define (same-variable? v1 v2)
    (and (variable? v1) (variable? v2) (eq? v1 v2))
)

(define (addend sum)
    (cadr sum)
)

(define (augend sum)
    (caddr sum)
)

(define (make-sum a b)
    (list '+ a b)
)

(define (make-product a b)
    (list '* a b)
)

(define (deriv exp var)
    (cond 
        ((constant? exp) 0)
        ((variable? exp)
            (if (same-variable? exp var) 1 0)
        )
        ((sum? exp)
            (make-sum
                (deriv (addend exp) var)
                (deriv (augend exp) var)
            )
        )
        ((product? exp)
            (make-sum
                (make-product (cadr exp) (deriv (caddr exp) var))
                (make-product (deriv (cadr exp) var) (caddr exp))
            )
        )
    )
)

(deriv '(* x y) 'x)
; (+ (* x 0) (* 1 y))

(deriv '(+ (* a x) b) 'x)
; (+ (+ (* a 1) (* 0 x)) 0)