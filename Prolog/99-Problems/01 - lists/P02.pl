% Find the last but one element of a list.
% (zweitletztes Element, l'avant-dernier élément)

last_but_one(X, [X,_]).
last_but_one(X, [_|T]) :-
    last_but_one(X, T).
