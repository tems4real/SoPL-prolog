% sum-up-numbers-simple returns true if N is the sum of 
% the numbers not in nested lists in L

% returns 0 if L is empty list
sum-up-numbers-simple([],0).

sum-up-numbers-simple([H|T],N):-
	number(H),
	sum-up-numbers-simple(T, Tsum),
	N is Tsum + H.

sum-up-numbers-simple([H|T],N):-
	\+ number(H),
	sum-up-numbers-simple(T, Tsum),
	N is Tsum.

% sum-up-numbers-general returns true i N is the sum of 
% all numbers in L

sum-up-numbers-general(H,0).

sum-up-numbers-general([H|T],N):-
	number(H),
	sum-up-numbers-general(T, Tsum),
	N is H + Tsum.

