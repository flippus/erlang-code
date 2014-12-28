% The MIT License (MIT)
% Copyright (c) 2014 Philipp Neugebauer
-module(consumer).
-export([accept/0]).

accept() ->
	receive
		Number ->
			io:format("received: ~p\n",[Number]), 
			accept();
		_ -> accept()
	end.

