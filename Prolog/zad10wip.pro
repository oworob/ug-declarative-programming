% Please define the following predicates for lists.

% a) nth(N,L,X), which is fulfilled if X is the N-th element in the list L.

nth(N,L,X) :- nth(N,L,X,0).
nth(N,[X|_],X,N).
nth(N,[_|T],X,I) :- I2 is I+1, nth(N,T,X,I2).

% b) ordered(L), which is fulfilled if list L is ordered.

ordered([]).
ordered([_]).
ordered([H1,H2|T]) :- H1 =< H2, ordered([H2|T]).

% c) mergesort(L1,L2), which is fulfilled if L2 is the ordered version of the list L1. The predicate should simulate algorithm mergesort.