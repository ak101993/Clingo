% at(G,C) means the guest G is assigned chair C
%Each guest is assigned a chair

{at(G,1..n)}=1 :- G=1..n.

%different guest are assigned different chairs
%its like one to one function
G1=G2 :- at(G1,C),at(G2,C).
