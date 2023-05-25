% Suppose predicates parent/2, female/1 i male/1 with the obvious interpretation are given. 
% Please define predicates child/2, mother/2, sister/2, has_a_child/1, grandparent/2 and predecessor/2.

parent(tom,bob).
parent(tom,liz).
parent(pam,bob).
parent(pam,anne).
parent(george,pam).

male(bob).
male(tom).
female(pam).
female(liz).
female(anne).

mother(P,C) :- female(P), parent(P,C).
father(P,C) :- male(P), parent(P,C).
child(C,P) :- parent(P,C).
daughter(C,P) :- female(C), parent(P,C).
son(C,P) :- male(C), parent(P,C).
sister(S,X) :- female(S), (father(F,X), father(F,S); mother(M,X), mother(M,S)).
brother(S,X) :- male(S), (father(F,X), father(F,S); mother(M,X), mother(M,S)).
has_a_child(P) :- parent(P,_).
grandparent(GP,GC) :- parent(GP,P), parent(P,GC).
predecessor(Old,Young) :- (parent(SomeParent,Young), predecessor(Old,SomeParent)); parent(Old,Young).