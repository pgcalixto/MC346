% Find out whether a list is a palindrome.
% A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

split_last([H, T], [H], T).
split_last([H|T], A, B) :-
    split_last(T, C, B),
    append([H], C, A).

palindrome([_]).
palindrome([X,X]).
palindrome([X|T]) :-
    split_last(T, Y, X),
    palindrome(Y).
