; Why the expression if cannot be defined the following way?

(define (new-if condition consequence alternative)
   (cond (condition consequence)
         (else      alternative)))


(new-if (> 5 3) true false)

; ¯\_(ツ)_/¯