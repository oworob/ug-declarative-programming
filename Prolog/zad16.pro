% Suppose the following definiton of predicate memberc(X,L) is given.

memberc(X,[X|_]) :- !.
memberc(X,[_|L]) :- memberc(X,L).

% Please compare this definition with the ordinary one of member(X,L).

member2(X,[X|_]).
member2(X,[_|T]) :- member2(X,T).

% memberc znajdzie element i się zatrzyma -> da tylko jedno rozwiązanie
% member2 dalej będzie sprawdzał -> może dać kilka rozwiązań np. jeżeli liczba występuję w liście kilka razy

% np. member2(X,[1,2,3]) zwróci x = 1, x = 2, x = 3, a memberc(X,[1,2,3]) zwróci X = 1 (bo znalazł pierwsze dopasowanie i dalej nie pójdzie)