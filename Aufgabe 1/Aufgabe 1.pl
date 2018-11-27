
%Aufgabe 1

nat(0).
nat(s(X)) :- nat(X).

% add(X,Y,Z)   Beispiel: add(s(s(s(s(s(s(0)))))), s(s(s((0)))), N). 
add(0,X,X) :- nat(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

% mult(X,Y,Z)  Beispiel: mult(s(s(s(s(s(s(0)))))), s(s(s((0)))), N).
mult(0,X,0) :- nat(X).
mult(s(X),Y,Z) :- mult(X,Y,XY), add(XY,Y,Z).

% sub(X,Y,Z)   Beispiel: sub(s(s(s(s(s(s(0)))))), s(s(s((0)))), N).
sub(X,0,X) :- nat(X).
sub(X,0,X).
sub(0,s(Y),0).
sub(s(X),s(Y),Z) :- sub(X,Y,Z),!.

% div(X,Y,Z)  Beispiel:  div(s(s(s(s(s(s(0)))))), s(s(s((0)))), N).
div(_, 0, 0):- nat(X).
div(0, _ , 0).
div(X, s(0), X).
div(A, B, s(N)) :- sub(A, B, R), div(R, B, N),!. 

