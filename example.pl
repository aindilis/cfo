%% NAME: Prime Numbers

%% DEFINITIONS:
%% 	ORIGIN: Number-of-divisors-of(x) = 2
%% 	PREDICATE-CALCULUS: Prime(x) = (Vz)(z|x -> z=1 V z=x)
%% 	ITERATIVE: (for x>1): For I from 2 to Sqrt(x), !(i|x)

%% EXAMPLES: 2, 3, 5, 7, 11, 13, 17
%% 	BOUNDARY: 2, 3
%% 	BOUNDARY-FAILURES: 0, 1
%% 	FAILURES: 12

%% GENERALIZATIONS: Nos., No. with an even nc,. of divisors, Nos. with a prime no. of divisors

%% SPECIALIZATIONS: Odd Primes, Prime Pairs, Prime Uniquely-addables

%% CONJECS: Unique factorization, Goldbach's conjecture, Extremes of Number-of-divisors-of

%% INTU'S: A metaphor to the effect that Primes are the building blocks of all numbers

%% ANALOGIES:
%% 	Maximally-divisible numbers are converse extremes of Number-of-divisors-of
%% 	Factor a non-simple group into simple groups

%% INTEREST: Conjecturis tying Primes to TIMES, to Divisors-of, to closely related operations

%% WORTH: 800

name(primeNumbers).

definitions(
	    origin(numberOfDivisorsOf(X) = 2),
	    predicateCalculus(prime(X) = forall(Z,Z|X -> Z=1 || Z=X)),
	    iterative(foreach(X,X>1,foreach(I,I = 2 to Sqrt(X), !(I|X))))
	   ).

examples(
	 [2, 3, 5, 7, 11, 13, 17],
	 boundary([2, 3]),
	 boundaryFailures([0, 1]),
	 failures([12])
	).

%% generalizations('Nos.', 'Nos. with an even no of divisors', 'Nos. with a prime no of divisors'),

%% SPECIALIZATIONS: Odd Primes, Prime Pairs, Prime Uniquely-addables

%% CONJECS: Unique factorization, Goldbach's conjecture, Extremes of Number-of-divisors-of

%% INTU'S: A metaphor to the effect that Primes are the building blocks of all numbers

%% ANALOGIES:
%% 	Maximally-divisible numbers are converse extremes of Number-of-divisors-of
%% 	Factor a non-simple group into simple groups

%% INTEREST: Conjecturis tying Primes to TIMES, to Divisors-of, to closely related operations

%% WORTH: 800
