-module(spawn_test).
-export([say_something/2, sec_start/0, con_start/0]).

say_something(_What, 0) ->
	done;
say_something(What, Times) ->
	io:format("~p~n", [What]),
	say_something(What, Times-1).

sec_start() ->
	say_something(hello, 3),
	say_something(goodbye, 3).

con_start() ->
	spawn(spawn_test, say_something, [hello, 3]),
	spawn(spawn_test, say_something, [goodbye, 3]).

