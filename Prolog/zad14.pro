% Please give the answer trees for the following queries

% a)

append1([],L,L).
append1([H|L1],L2,[H|L3]) :- append1(L1,L2,L3).

append2([H|L1],L2,[H|L3]) :- append2(L1,L2,L3).
append2([],L,L).

?- appendi(X,[3,4],[2,3,4]).
% -> appendi([2|L1], [3,4], [3,4]) -> appendi(L1, [3,4], [3,4])
% -> L1 = []
% -> X = [2|L1] -> X = [2]


