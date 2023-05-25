; Using function fold please define the following functions for lists.

(define a '(1 2 3 4))

(define (fold f e l) ; e -> akumulator/wartosc poczatkowa; f -> funkcja wykonywana na kolejnych elementach listy (np. dodawanie); l -> lista elementow
	(if (null? l)
        e
        (f (car l) (fold f e (cdr l)))
    
     )
)

(fold * 1 a) ; 1 * 1 * 2 * 3 * 4 = 24

; a) (prod l)

(define (prod l)
	(fold * 1 a)
)

(prod a)

; b) (length l)

(define (length l)
	(fold (lambda (x acc) (+ acc 1)) 0 l)
)

(length a)

; c) (delete x l)

(define (delete x l)
	(fold (lambda (e acc)
    	(if (= e x) 
        acc
        (cons e acc)))
    '() l)
)

(delete 2 a)

; d) (reverse l)

(define (reverse l)
	(fold (lambda (e acc)
        (cons acc e))
    '() l)
)

(reverse a)

; e) (map f l)

(define (func a)
  (* a 3)
)

(define (map f l)
	(fold (lambda (e acc)
        (cons (f e) acc))
    '() l)
)

(map func a)

; f) (filter pred l)

(define (biggerthantwo? a)
  (if (> a 2) #t #f)
)

(define (filter pred l)
	(fold (lambda (e acc)
        (if (pred e)
        (cons e acc)
        acc)
            )
    '() l)
)

(filter biggerthantwo? a)

; g) (forall pred l).

(define (forall pred l)
	(fold (lambda (e acc)
        (if (not (pred e))
                #f
                #t)
            )
    '() l)
)

(forall biggerthantwo? a)