-module(listsum3).
-export([sum/1]).

sum(L) ->
	sum1(L, 0).

sum1([], Sum) ->
	Sum;

sum1([H | T], Sum) when is_integer(H) ->
    %% ガードを使用して、Hが数値の場合のみ、この関数が呼び出される
	sum1(T, Sum + H);

sum1([_ | T], Sum) ->
	%% 上記のsum1で、Hが数値以外の値の場合は、こちらが呼び出される
    sum1(T, Sum).
