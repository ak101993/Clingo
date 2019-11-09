%Generate part : generate the search space contians solution and may connect wrong solution
%Define  define new atoms auxillary atom of other atoms
%Test  remove which do not contains solution
{bishop(R,1..n)} :- R=1..n.
%Each diagonal has exactly one bishop
:- bishop(R1,C1), bishop(R2,C2), R1!=R2,|R1-R2| =|C1-C2|.

#maximize{1,R,C: bishop(R,C)}.
%#sum{1,R,C: bishop(R,C)}.

%when n= 3 4 5 6 7 8
%checking for all
% for n=3 Optimal Solution---bishop(1,1) bishop(3,1) bishop(1,2) bishop(3,2)

% for n=4 Optimal Solution---bishop(1,1) bishop(2,1) bishop(3,1) bishop(4,1) bishop(2,4) bishop(3,4)

% for n=5 Optimal Solution---bishop(1,1) bishop(2,1) bishop(5,1) bishop(5,2) bishop(1,3) bishop(5,3)
%bishop(1,4) bishop(4,5)

% for n=6 Optimal Solution---bishop(3,1) bishop(4,1) bishop(1,2) bishop(6,2)
%bishop(1,5) bishop(6,5) bishop(1,6) bishop(3,6) bishop(4,6) bishop(6,6)

% for n=7 Optimal Solution---bishop(4,1) bishop(5,1) bishop(7,1) bishop(1,2)
%bishop(7,2) bishop(1,3) bishop(7,5) bishop(1,6) bishop(7,6) bishop(3,7) bishop(4,7) bishop(7,7)

% for n=8 Optimal Solution---bishop(1,1) bishop(2,1) bishop(6,1) bishop(8,2) bishop(1,3)
%bishop(1,4) bishop(8,4) bishop(1,5) bishop(8,5) bishop(8,6) bishop(1,7) bishop(1,8)
%bishop(3,8) bishop(7,8)
