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

