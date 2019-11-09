%p(N,2*N) :- N=2**(0..3).
% p(2**0..3).
%p(1..3).
%p(1;2;3).


%p(1..3).
%q(X) :- X=2..4, not p(X).



%composite(N) :-N=1..10,I=2..N-1,N\I=0.
%#show composite/1.

p(N,M) :- N=1..4,M=1..2*N.

#show p/2.
