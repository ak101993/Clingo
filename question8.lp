%input all the k subset of the numbers
{schur(X,Y): Y=1..k}=1:- X=1..n.

%there should be no number where X+Y=Z(where z is from same subset)
:-schur(X1,Y),schur(X2,Y),schur(X1+X2,Y),X1 != X2.
