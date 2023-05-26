% Suppose the following definiton of a predicate maximum is given.

maximum(X,Y,X) :- X >= Y, !.
maximum(X,Y,Y).

% Then Prolog answers "incorrectly" to the question
?- maximum(5,2,2). % -> true

% Why does Prolog answer "true" and how this error can be fixed (nor eliminating the cut or modifying the fact)?

% Prolog zwraca false w pierwszej regule, ale i tak sprawdza drugą i zwraca true bo X = 5, Y = 2