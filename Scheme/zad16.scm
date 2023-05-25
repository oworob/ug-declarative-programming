; Please define a function (iter f n), whose value is the function fn.

(define (iter f n)
	(cond 
     ((= n 1) f)
     (else (lambda (x) (f ((iter f (- n 1)) x))))
    )
)

(define (fun x)
  (* x 2)
)

(iter fun 5)
;(f (f (f (f (f x)))))

((iter fun 3) 2)
;(f (f (f x))) -> (* (* (* x 2) 2) 2) -> (* (* (* 2 2) 2) 2) -> (* (* 4 2) 2) -> (* 8 2) -> 16
