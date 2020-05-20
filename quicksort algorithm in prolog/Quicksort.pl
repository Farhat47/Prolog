%Aufgabe 4


% A- filter_greater/3   Beispiel:  filter_greater(5,[1,3,7,6,4,9,5],R). yes. R / [7,6,9]

filter_greater( _,[], []).
filter_greater(Y,[X|Xs] , Zs) :-
    (   X > Y
    ->  Zs = [X|Zs1]
    ;   Zs = Zs1
    ),
    filter_greater(Y, Xs, Zs1).


% B- my_quicksort/2    Beispiel: my_quicksort([1,7,1,6,2,9,5,7,4], Res). yes. Res / [1,1,2,4,5,6,7,7,9]

my_quicksort(L,S):- swap(L,LS),!,my_quicksort(LS,S).
my_quicksort(S,S).
swap([X,Y|T],[Y,X|T]):- X > Y.
swap([Z|T],[Z|TT]):- swap(T,TT).


