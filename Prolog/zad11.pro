% Please define a predicate permutation(L1,L2), which is fulfilled if the list L2 is a permuation of L1.
% (Using ";" it should be possible to enumerate all permutations of L1.)

mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|R],S) :- split([A,B|R],L1,L2), mergesort(L1,S1), mergesort(L2,S2), mymerge(S1,S2,S).
 
split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]) :-  split(R,Ra,Rb).
 
mymerge(A,[],A).
mymerge([],B,B).
mymerge([A|Ra],[B|Rb],[A|M]) :-  A =< B, mymerge(Ra,[B|Rb],M).
mymerge([A|Ra],[B|Rb],[B|M]) :-  A > B,  mymerge([A|Ra],Rb,M).

permutation(L1,L2) :- mergesort(L1,L), mergesort(L2,L).