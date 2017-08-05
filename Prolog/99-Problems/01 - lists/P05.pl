% Reverse a list.

reverse([X], [X]).
reverse([A, H], [H|[A]]).
reverse(X, [H|T]) :-
    reverse(Y, T),
    append(Y, [H], X).
