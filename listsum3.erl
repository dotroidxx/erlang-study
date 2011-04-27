-module(listsum3).
-export([sum/1]).

sum(L) ->
	sum1(L, 0).

sum1([], Sum) ->
	Sum;
sum1([H | T], Sum) when is_integer(H) ->
	sum1(T, Sum + H);
sum1([_ | T], Sum) ->
    sum1(T, Sum).
