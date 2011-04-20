-module(mymath).
-export([start_factorial/1]).

start_factorial(N) when is_integer(N) ->
	factorial1(N).

factorial1(0) ->
	1;
factorial1(N) ->
	N * factorial1(N-1).
