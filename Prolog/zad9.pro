% Assume the following definition of the predicate append is given.

append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).
append([], L, L).   

% Using answer trees please show how Prolog answers to the questions

?- append(X, [3,4], [2,3,4]).
?- append([XH|XT], [3,4], [2|3,4]).
?- append([2|XT], [3,4], [2|3,4]).
?- append(XT, [3,4], [3,4]).

XT = []
X = [2]
