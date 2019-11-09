%Generate part : generate the search space contians solution and may connect wrong solution
%Define  define new atoms auxillary atom of other atoms
%Test  remove which do not contains solution

%Each row has exactly one queen
% 1{queen(R,1..n)}1
{queen(R,1..n)}=1 :- R=1..n.

%No two queen on the same column
:- queen(R1,C),queen(R2,C),R1 !=R2.
% not queen in 4x4 matrix in the middle
:- queen(R1,C1),R1=3..6,C1=3..6.
%no queen in the diagonal
:- queen(R1,C1), queen(R2,C2), R1!=R2,|R1-R2| =|C1-C2|.
