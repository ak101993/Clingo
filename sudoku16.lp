% We take input of each number through a external file for gien state of the sudoku problem

{sudoku(X,Y,N):X=1..16,Y=1..16,X1<=X,X<=X1+3,Y1<=Y,Y<=Y1+3}=1
:- N=1..16,X1=4*(0..3)+1,Y1=4*(0..3)+1.

% each 3x3 blocks do not allow to repeat numbers
:- sudoku(X,Y,N),sudoku(X,Y,N1),N!=N1. %It will either remove sudoku(X,Y,N) or sudoku(X,Y,N1)

%no elememts on the same row or same colunmns just like the queens problem
:- sudoku(X,Y,N),sudoku(X,Y1,N),Y!=Y1.

:- sudoku(X,Y,N),sudoku(X1,Y,N),X!=X1.
