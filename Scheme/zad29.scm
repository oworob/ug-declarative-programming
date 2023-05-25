; Please define a function (counting-version f), where f is a one-argument function. 
; Its value is a one-argument function, which - computes f and - counts how often f is called.

(define (counting-version f)

	(define total 0)

  	(define (reset)
    	(set! total 0)
    )

	(define (func n)
      	(set! total (+ 1 total))
    	(f n)
    )
  
  	(define (main f)
    	(cond
         	((eq? f 'how-often) total)
         	((eq? f 'reset) (reset))
			((number? f) (func f))
        )
    )
  main
)

(define (square n)
  (* n n)
 )

(define sq (counting-version square))
(sq 'how-often)
(sq 5)
(sq 7)
(sq 'how-often)
(sq 'reset)
(sq 'how-often)