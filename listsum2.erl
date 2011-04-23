-module(listsum2).
-export([sum/1]).

sum(List)->
		sum1(List).

sum1([]) ->
		0;
sum1([H | T]) ->
		H + sum1(T).
