% Predicate sil/2 can also be defined as follows:

sil(X,N) :- sil(X,N,1).
sil(0,A,A).
sil(X,N,A) :- X > 0, A1 is A * X, X1 is X - 1, sil(X1,N,A1).

% Please define the predicates from exercise 5 using this technique. (Note: The variable A of sil/3 is called accumulator.)

% a)

plus(X,Y,N) :- plus(X,Y,N,Y).
plus(0,_,A,A).
plus(X,Y,N,A) :- X > 0, A2 is A + 1, X2 is X - 1, plus(X2,Y,N,A2).

% b)

times(X,Y,N) :- times(X,Y,N,0).
times(0,_,A,A).
times(X,Y,N,A) :- X > 0, A2 is A + Y, X2 is X - 1, times(X2,Y,N,A2).

% c)

fib(X,N) :- fib(X,N,0,1).
fib(0,B,_,B).
fib(X,N,A,B) :- X > 0, B2 is A + B, A2 is B, X2 is X - 1, fib(X2,N,A2,B2).

% d)

sum_up(X,N) :- sum_up(X,N,0).
sum_up(0,A,A).
sum_up(X,N,A) :- X > 0, X2 is X - 1, A2 is A + X, sum_up(X2,N,A2).