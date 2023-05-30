% Please define a predicate filter(P,L1,L2), which is fulfilled if list L2 contains all elements from list L1 fulfilling predicate P.

% Example:
% pos(X) :- X > 0.
% neg(X) :- X < 0.
% ?- filter(pos,[1,2,0,5,-5,-6,8],L). -> L = [1,2,5,8]
% ?- filter(neg,[1,2,0,5,-5,-6,8],L). -> L = [-5,-6]

pos(X) :- X > 0.

filter(_,[],[]).
filter(F,[H|T1],[H|T2]) :- call(F,H), filter(F,T1,T2).
filter(F,[_|T],L2) :- filter(F,T,L2).

filter(pos,[1,2,0,5,-5,-6,8],L)