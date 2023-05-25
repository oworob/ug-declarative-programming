; a) Please define a function (make-konto balance) generating an account with balance dollars. The following operations should be possible: withdraw money, deposit money and checking balance

(define (make-konto balance)
  
  	(define (withdraw amount)
    	(set! balance (- balance amount))
    )
  
  	(define (deposit amount)
    	(set! balance (+ balance amount))
    )
  
  	(define (main f)
    	(cond
         	((eq? f 'balance) balance)
         	((eq? f 'withdraw) withdraw)
         	((eq? f 'deposit) deposit)
        )
    )
  main
)


; b) Suppose now the following definition: (define k1 (make-konto 100)). Using the environment model please show, how the following expressions are evaluated.

((k1 'withdraw) 40) ; -> (withdraw 40) -> (set! balance (- balance 40))
(k1 'balance) ; -> 60
((k1 'deposit) 10) ; -> (deposit 10) -> (set! balance (+ balance 10))
(k1 'balance) ; -> 70


; c) Please modify function make-konto, so that an account with a password is generated - that is operations are only carried out, if the correct password is given.

(define (make-konto balance password)
  
  	(define (withdraw amount)
    	(set! balance (- balance amount))
    )
  
  	(define (deposit amount)
    	(set! balance (+ balance amount))
    )
  
  	(define (incorrectpassword . notimportantargs)
    	"Incorrect password!"
    )
  
  	(define (main p f)
      	(if (eq? p password)
        	(cond
              ((eq? f 'balance) balance)
              ((eq? f 'withdraw) withdraw)
              ((eq? f 'deposit) deposit)
        	)
         incorrectpassword
        )
    )
main
)

(define k2 (make-konto 100 'password))
(k2 'password 'balance)
((k2 'password 'withdraw) 40)
(k2 'password 'balance)
((k2 'wrong-password 'withdraw) 20)
(k2 'password 'balance)