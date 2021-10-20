-module(user_default).
-export([t/1]).

%% @doc EUnit for module M
%% Borrowed from https://github.com/thomasl/erlang-repl-utils
t(M) ->
    case catch eunit:test(M) of
        {'EXIT', {undef, _}} ->
            ok;
        Result ->
            Result
    end.
