% Using answer trees please show, how Prolog answers to the following queries.

% a)

p(x) :- a(x).
p(x) :- b(x), c(x), !, d(x).
p(x) :- f(x).
a(1).
b(1).
c(1).
b(2).
c(2).
d(2).
f(3).

?- p(x). 
% x = 1, x = 1, x = 2, x = 3

% b)

p(1). 
p(2) :- !.
p(3).

?- p(x).
?- p(x), p(y).
?- p(x), !, p(y).
% x = 1, x = 2
% ! jest używany do 'ograniczania' liczby wyników -> dopasowuje 1 i 2 i nie sprawdza dalej