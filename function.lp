% A function from a set A to set B is a relation f from AxB such that for every element x in A there is exaclty
%one element y in B such that (x,y) is in f

%Normal function
%domain(1;2;3).
%codomain(a;b).
%{f(X,Y): codomain(Y)}=1 :- domain(X).

%One to One function
domain(1;2;3).
codomain(a;b;c).
{f(X,Y): codomain(Y)}=1 :- domain(X).
:-f(X2,Y),f(X1,Y),X2!=X1.
