% A predicate describing the length of a list can be defined as follows.

length1(0,[]).
length1(N,[_|L]) :- length1(M,L), N is M+1.

% Please define predicates member/2 oraz fac/2, fib/2 i gcd/3 analogous.
% a)

member2(X,[X|_]).
member2(X,[_|T]) :- member2(X,T).

?-member2(2,[1,2,3]) % -> true

% :- => IF
% , -> AND
% ; -> OR
% Prolog odpowiada na pytania TAK/NIE

% b)

fac2(0,1).
fac2(N,M) :-
    N>0,
    N2 is N-1,
    fac2(N2,M2),
    M is N*M2.

% c)

fib2(0,0).
fib2(1,1).

fib2(I,N) :-
    I >= 2,
    Ip is I-1,
    Ip2 is I-2,
    fib2(Ip,Np),
    fib2(Ip2,Np2),
    N is Np + Np2.

% d)

gcd2(N,M,G) :- G is N, G is M.

% G jest NWD N i M jeżeli
% G jest równe N i G jest równe M.

gcd2(N,M,G) :- N > M, N2 is N - M, gcd2(N2,M,G).

% G jest NWD N i M jeżeli
% N jest większe od M i G jest NWD N-M (N2) oraz M

gcd2(N,M,G) :- N < M, M2 is M - N, gcd2(N,M2,G).