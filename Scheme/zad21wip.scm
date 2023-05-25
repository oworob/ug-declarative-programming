; Please define a function (eval expression values) which evaluates boolean expressions.
; expression is a list whose first element gives the "typ" of the boolean expression, the remaining elements are the subexpressions - for example '(and x (not y)) represents the expression x∧¬y.
; values is a list of variables together with their corresponding boolean value.

(define values '((x . #f) (y . #t) (z . #f)))

; ¯\_(ツ)_/¯