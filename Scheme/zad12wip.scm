; Even function accumulate can be generalized: Please define a function filter-accumulate with an additional argument pred.
; pred is a one-argument predicate and filter-accumulate ties (term a) to the result only if a fulfills pred.
; Using filter-accumulate please compute the sum of squares of the prime numbers in the interval [a,b] and the product of the natural numbers i smaller than n for which nwd(i,n) = 1.

(define (filter-accumulate combiner null-value term a next b pred)
	(cond 
    	((> a b) null-value)
    	((pred a) (combiner (term a) (filter-accumulate combiner null-value term (next a) next b pred)))
    	(else (filter-accumulate combiner null-value term (next a) next b pred))
    )
)

(define (sum a b) (+ a b)) ; combiner1
(define (product a b) (* a b)) ; combiner2
(define (inc n) (+ n 1)) ; next
(define (sqr n) (* n n)) ; term


(define (primehelper n i)
	(cond
		((<= n 2) (= n 2))
     	((zero? (modulo n i)) #f)
     	((> (* i i) n) #t)
     	(else (primehelper n (+ i 1)))
	)
)
(define (prime? n) ; pred1
	(primehelper n 2)
)

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (qualify? n) ; pred2
	(and (integer? n) (= (gcd n 2) 1))
)

(filter-accumulate sum 0 sqr 1 inc 5 prime?) ; <- sum of squares of prime numbers in [a,b] (2*2 + 3*3 + 5*5 = 38)
(filter-accumulate product 1 sqr 1 inc 5 qualify?) ; <- product of natural numbers i smaller than n for which nwd(i,n) = 1 (i oraz n - liczby wzglednie pierwsze)
