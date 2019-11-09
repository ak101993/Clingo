domain(1;2;3).
codomain(a;b;c;d;e).
{function(X,Y): codomain(Y)}=1 :- domain(X).
X=X1:- function(X,Y),function(X1,Y).

#show function/2.
