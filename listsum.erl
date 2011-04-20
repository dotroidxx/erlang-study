-module(listsum).
-export([sum/1]).

sum(List) ->
	sum1(List, 0).

sum1([], Sum) ->
	Sum;
sum1([H | T], Sum) ->
	sum1(T, Sum + H).

