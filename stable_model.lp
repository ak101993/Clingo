% {p(X)} :- X=1..3.
% :-p(1),not p(2).
% domain(1;2;3).
% codomain(a;b;c;d;e).
% 1{f(X,Y) : codomain(Y)}1 :- domain(X).
% p(N,N*N+N+41) :-N=0..3.

% p :- not p.

% p(N,M) :- N=1..4,N=2*M.

% size(france,65).size(germany,85).size(itlay,61).size(uk,64).

%Rule
% A country C is large if its population size is S1 the population size of the UK is S2 and S1>S2

% large(C) :- size(C,S1),size(uk,S2),S1>S2.

% p :- #false.

%Consider the rule 

% parent(ann,bob).parent(bob,carol).parent(bob,catia).

% child(X,Y) :- parent(Y,X).

% grandparent(X,Z) :- parent(X,Y),parent(Y,Z).

% carol and catia are sibling

% sibling(X,Y) :- parent(Z,X),parent(Z,Y),X!=Y.

% p :- not p.

% p(M,N) :- N=1..4,N=2*M.

% p(X,Y) :- X=2**(0..3),Y=2*X.

% p(X) :- X=2**(0..3).

% composite(N) :- N=1..n,I=2..N-1,N\I=0.

% fibonacci(0,0).fibonacci(1,1).

% fibonacci(N+2,F1+F2) :- N=0..(n-2),fibonacci(N,F1),fibonacci(N+1,F2).


% factorial(0,1).
% factorial(N,V) :- factorial(N-1,V),N=(1..n).

% a=-1..0.
% b(X**2) :- a(X).

% p(X\Y, X**|X-Y|) :- X=1..2, Y=2..3.

% p=1..3.
% X=1 :- p(X). 

% p(X) :- X=1..5.
% X=6..5.

parent(ann,bob). parent(bob,carol). parent(bob,dan).

% child(X,Y) :- parent(Y,X).

grandparent(X,Z) :- parent(X,Y),parent(Y,Z).
