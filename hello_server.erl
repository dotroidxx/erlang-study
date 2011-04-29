-module(hello_server).
-export([loop/0]).

loop() ->
	receive
		{hello, X} ->
			io:format("hello:~p~n", [X]),
			loop();
		{erlang, X, Y} ->
			io:format("erlang:~p :~p~n", [X ,Y]),
			loop();

		Other ->
			io:format("not supported:~p~n", [Other]),
			loop()
	end.
