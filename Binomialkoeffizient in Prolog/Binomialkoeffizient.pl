% Aufgabe 2

% A- Der gr??te gemeinsame Teiler (ggT)  Beispiel:  ggT(42,36,X). yes. X / 6
ggT(A,A,A).      
ggT(A,B,E) :-  A > B,  A1 is A - B,  ggT(A1,B,E),!.
ggT(A,B,E) :-  A < B,  B1 is B - A,  ggT(A,B1,E),!.


% B- Binomialkoeffizient  Beispiel: binom(5,3,X). yes. X / 10

/*
N < 0
N < K
*/
binom(N,K,0) :- (N < 0; N < K; N < 0), !.
binom(N,M,C) :-
    NM is N-M,
    binomialHelper(NM,0,M,1,C).

binomialHelper(_,M,M,R,R) :- !.
binomialHelper(N,K,M,Q,R) :-
    NP is N + 1,
    KP is K + 1,
    QP is (Q*NP)/KP,
    binomialHelper(NP,KP,M,QP,R).

    