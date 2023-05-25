; a) Please define a function (square-list l), whose value is the list of squares of all elements of l.

(define a '(1 2 3))

(define (square-list l)
 	(if (null? l)
        l
        (cons (* (car l)(car l)) (square-list (cdr l)))
	)
)

(square-list a)


; b) Please define a function (mapf f l), whose value is the list of values f(e) for all elements e of l.

(define a '(1 2 3))
(define (func x) (* x 2) )

(define (mapf f l)
 	(if (null? l)
        l
        (cons (f (car l)) (mapf f (cdr l)))
	)
)

(mapf func a)


; c) Please define a function (filter pred l), whose value is the list of all elements of l fulfilling pedicate pred.

(define (filter pred l)
 	(cond 
     	((null? l) l)
      	( (pred (car l)) (cons (car l) (filter pred (cdr l))) )
     	(else (filter pred (cdr l)))
        
	)
)

(define a '(1 2 3 4 5))
(define (pred x) (> x 3))

(filter pred a)