; Using lists to represent binary trees (see lecture notes) please define functions (memberTree? element tree), (sumTree tree), (inorder tree) and (mapTree f tree).

(define (memberTree? element tree)
 	(cond 
     	((null? tree) #f) ; end of tree
     	((list? tree) ; parent has children -> (parent child1 child2)
			(if (eq? (car tree) element) ; parent =? element
				#t
				(or (memberTree? element (car (cdr tree))) (memberTree? element (car (cdr (cdr tree))))) ; continue searching in left and right child
			)
		)
		(else (eq? tree element)); parent has no children -> parent
	)
)

(define a '(1 (2 4 5) 3))

(memberTree? 3 a)

;     1
;    / \
;   2   3
;  / \
; 4	  5