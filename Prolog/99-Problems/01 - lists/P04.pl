% Find the number of elements of a list.

number_of_elements(0, []).
number_of_elements(X, [_|T]) :-
    number_of_elements(Y, T),
    X is Y+1.
