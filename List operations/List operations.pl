%%Aufgabe 3:

%Helper
help([X|Xs],[],[]).
help([X|Xs],[X|Ys],[X|Zs]) :- help([X|Xs],Ys,Zs),!.
help([X|Xs],[Y|Ys],Zs) :- help([X|Xs],Ys,Zs).

% A- entferne/3   Beispiel:  entferne(3,[1,5,7,3,9,3,3],R). yes. R / [1,5,7,9]
entferne(X,[],[]).
entferne(X,[X|Xs],Zs) :- !, entferne(X,Xs,Zs).
entferne(X,[H|T],[H|Z]) :- entferne(X,T,Z).

% B- ersetze/4    Beispiel:  ersetze(3,5,[1,5,7,3,9,3,3],R). yes. R / [1,5,7,5,9,5,5]
ersetze(X,Y,[],[]).
ersetze(X,Y,[X|Xs],[Y|Zs]) :- !, ersetze(X,Y,Xs,Zs).
ersetze(X,Y,[H|T],[H|Zs]) :- ersetze(X,Y,T,Zs).

% C- schnitt/3    Beispiel:  schnitt([1,3,5,7],[7,4,9,3],R). yes. R / [3,7]
schnitt([],_,[]).
schnitt([X|Xs],[X|Ys],[X|Zs]) :- schnitt(Xs,Ys,Zs),!.
schnitt([X|Xs],[Y|Ys],Os) :- help([X|Xs],[Y|Ys],K), schnitt(Xs,[Y|Ys],Zs), append(K,Zs,Os).

% D- mapsquare/2  Beispiel:  mapsquare([1,2,3,4],R). yes. R / [1,4,9,16]
mapsquare([],[]).
mapsquare([X|Xs],[Y|Ys]) :- Y is X*X, mapsquare(Xs,Ys).

% E- praefix/2    Beispiel:  praefix([1,2],[1,2,3,4,5]). yes.
praefix([],_).
praefix([X|Xs],[Y|Ys]) :- X is Y, praefix(Xs,Ys).

