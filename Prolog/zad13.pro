% Please give the answer trees for the following queries. Which answers gives Prolog?

% a)

s(X) :- p(X), r(X).
s(X) :- q(X).
p(a).
p(b).
q(a).
q(c).
r(a).
r(b).

?- s(X). % -> X = a, X = b, X = a, X = c

% b)

q(X) :- p(X), r(X).
p(a).
r(a).
r(f(Y)) :- r(Y).

?- r(Z). % -> Z = a, Z = f(a), Z = f(f(a)), Z = f(f(f(a)))...
?- q(Z). % -> Z = a

% c) 

p(X,Z) :- q(X,Y), p(Y,Z).
p(X,X).
q(a,b).
?- p(X,b). % -> X = a, X = b