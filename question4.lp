%%%%%%%%%%%%%%%%%%%
% File: blocks.lp: Blocks World
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sort and object declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% every block is a location
location(B) :- block(B).
% the table is a location
location(table).
%%%%%%%%%%%%%%%%%%%%%%%%%%
% state description
%%%%%%%%%%%%%%%%%%%%%%%%%%
% two blocks can't be on the same block at the same time
:- 2{on(BB,B,T)}, block(B), T = 0..z.
:- on(B1,B,T),move(B1,J,T),move(B2,B,T),block(B).
%B1==B2,B2==B3,B3==B4,B4==B1:- on(B1,B2,T),on(B3,B4,T),move(B3,table,T),move(B1,B3,T),T=0..z.
#minimize { 1,B,L,T : move(B,L,T)}.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect and preconditions of action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect of moving a block
on(B,L,T+1) :- move(B,L,T).
% concurrent actions are limited by num of grippers
:- not {move(BB,LL,T)} grippers, T = 0..z-1.
% a block can be moved only when it is clear
:- move(B,L,T), on(B1,B,T).
% a block can't be moved onto a block that is being moved also
:- move(B,B1,T), move(B1,L,T).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% domain independent axioms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fluents are initially exogenous
1{on(B,LL,0):location(LL)}1 :- block(B).
% uniqueness and existence of value constraints
:- not 1{on(B,LL,T)}1, block(B), T=1..z.
% actions are exogenous
{move(B,L,T)} :- block(B), location(L), T = 0..z-1.
% commonsense law of inertia
{on(B,L,T+1)} :- on(B,L,T), T = 0..z-1.


#show move/3.

%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%
%block(a..o).
block(a).block(b).block(c).block(d).block(e).block(f).block(g).block(h).block(i).block(j).block(k).block(l).block(m).block(n).block(o).
% initial state
:-not on(m,table,0;l,m,0;a,l,0;b,a,0;c,b,0;o,table,0;n,o,0;d,n,0;e,d,0;j,e,0;k,j,0;f,table,0;g,f,0;h,g,0;i,h,0).
% goal
:- not on(e,j,z; a,e,z; n,a,z; i,d,z; h,i,z; m,h,z;o,m,z;k,g,z;c,k,z;b,c,z;l,b,z).
