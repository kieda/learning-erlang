%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2021 8:19 PM
%%%-------------------------------------------------------------------
-module(exceptions).
-author("zkieda").

%% API
-export([testExceptions/0]).

testExceptions() ->
  io:fwrite("exceptions1 ~p\n", [testException1()]),
%  io:fwrite("exceptions2 ~p\n", [testException2()]),
  io:fwrite("error1 ~p\n", [testError1()]),
  io:fwrite("incompletematch ~p\n", [try incompleteMatch(noKey) catch
    throw: E -> {E, caught, thrown};
    exit: E -> {E, caught, exited};
    error: E -> {E, caught, error};
    _ : _ -> "case for all other errors"
  end])
  .

testException2() ->
  try true of
    _ -> raiseAnException("crazy styff 2!")
  catch
    throw: E -> {E, caught, thrown};
    exit: E -> {E, caught, exited};
    error: E -> {E, caught, error}
  after
    {error, false}
  end.


testException1() ->
  try raiseAnException("crazy shit!") of
    _ -> true
  catch
    throw: E -> {E, caught, thrown};
    exit: E -> {E, caught, exited};
    error: E -> {E, caught, error}
  end.

testError1() ->
  try raiseAnError("crazy error!") of
    _ -> true
  catch
    throw: E -> {E, caught, thrown};
    exit: E -> {E, caught, exited};
    error: E -> {E, caught, error}
  end.

raiseAnException(Why) ->
  throw({exception, Why}).
raiseAnError(Why) ->
  error({error, Why}).

incompleteMatch(exists) -> 1;
incompleteMatch(hello) -> 2.

