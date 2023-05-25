; Please define the following functions for lists.
; a) (append l m), whose value is the concatenation of the lists l i m.
; b) (last l), whose value is the last element of the list l.
; c) (reverse l), whose value is the list l in reversed order.
; d) (delete x l), whose value is the list l without the element x.
; e) (pairing l1 l2), that builds a list of pairs out of the lists l1 and l2.
; f) (split x l), that splits l into two lists l1 and l2. l1 contains the element of l smaller than x and l2 the elements greater than x.


(define a '(1 2 3))
(define b '(a b c))



(define (append l m)
	(if (null? l)
        m
        (cons (car l) (append (cdr l) m))
    )
)

(append a b)



(define (last l)
	(if (null? (cdr l))
        (car l)
        (last (cdr l))
    )
)

(last a)



(define (reverse l)
	(if (null? l)
        l
        (append (reverse (cdr l)) (list (car l)))
    )
)

(define a '(1 2 3 4))

(reverse a)



(define (delete x l)
	(cond 
    	((null? l) l)
        ((= (car l) x) (delete x (cdr l)))
     	(else (append (list (car l)) (delete x (cdr l))))
    )
)

(delete 2 a)



(define (pairing l1 l2)
	(cond 
    	((null? l1) l1)
     	(else (cons (cons (car l1) (car l2)) (pairing (cdr l1) (cdr l2)) ))
    )
)

(pairing a b)




(define (split x l)
  
  (cond
    ((null? l) (list '() '()))
    ((< (car l) x) (cons (cons (car l) (car (split x (cdr l)))) (cdr (split x (cdr l)))))
    ((> (car l) x) (cons (car (split x (cdr l))) (cons (car l) (cdr (split x (cdr l))))))
    (else (split x (cdr l)))
  ))



(define a '(1 2 3 4 5 6 7))
(display (split 4 a))