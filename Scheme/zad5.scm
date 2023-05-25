; Please define a function (same-values? p1 p2 x y) whose value is #t, if p1(x,y) i p2(x,y) have the same value and #f otherwise.

(define (same-values? p1 p2 x y)
(eq? (p1 x y) (p2 x y))
)

(same-values? + * 2 2)