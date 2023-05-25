; a) Assume that the following expessions have been evaluated. What are the values of z1 and z2?

(define x (mcons 'a (mcons 'b '()))) ; -> (a b)
(define z1 (mcons x x)) ; -> (x . x)
(define z2 (mcons (mcons 'a (mcons 'b '())) (mcons (mcons 'a (mcons 'b '())) '()))) ; -> ((a b) (a b))
					
(set-mcar! (mcar z1) 'g) ; -> (x . x)
(set-mcar! (mcar z2) 'g) ; -> ((g b) (a b))

; b) Please define a function (mlist l) transforming list l into a destructive list.

(define (mlist l)
  (let loop ((lst l) (last-pair #f))
    (cond
      ((null? lst) last-pair)
      ((null? (cdr lst))
       (set-cdr! lst last-pair)
       (loop (cdr lst) lst))
      (else
       (let ((new-pair (cons (car lst) #f)))
         (set-cdr! lst new-pair)
         (loop (cdr lst) new-pair))
      )
    )
  )
)

(define l1 (list 'a 'b 'c))
(define l2 (list 1 2 3))

(set-car! l1 l2)
l1
(set-car! l2 0)
l1
l2

(mlist l1)