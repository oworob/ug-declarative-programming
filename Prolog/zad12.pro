% A binary tree T is either empty - represented by the term nil - or consists of an element X (the root element) and two subtrees L and P - represented by the term node(X,L,P).
% Please define the following predicates for binary trees.

% a) size(T,N), which is fulfilled if N is the number of elements of tree D.

size(nil,0).
size(node(_,L,R),N) :- size(L,H1), size(R,H2), N is H1 + H2 + 1.

% size(node(1,node(2,nil,nil),node(3,nil,node(4,nil,nil))), X) -> 4
%       1
%      / \
%     2   3
%          \
%           4

% b) search(T,X), which is fulfilled if X appears in tree T.

search(node(X,_,_),X).
search(node(_,L,R),X) :- search(L,X); search(R,X).

% c) max(T,X), which is fulfilled if X is the largest element of tree T.

maxtree(node(H,nil,R),X) :- X >= H, maxtree(R,X).
maxtree(node(H,L,nil),X) :- X >= H, maxtree(L,X).
maxtree(node(H,nil,nil),X) :- X >= H.
maxtree(node(H,L,R),X) :- X >= H, maxtree(L,X), maxtree(R,X).
% true nawet jeżeli elementu nie ma w drzewie ¯\_(ツ)_/¯

% d) 
