{p(1..3)}=0.
%0{p(a)}.
%{p(a);q(b)}.
%:- p(a), q(b).
domain(1;2;3;4;5).
codomain(a;b;c).
{function(X,Y): codomain(Y)}=1 :- domain(X).
:- {function(X,Y): domain(X)}=0,codomain(Y).
#show function/2.
