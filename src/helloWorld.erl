%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2021 1:23 AM
%%%-------------------------------------------------------------------
-module(helloWorld).
-author("zkieda").

-export([helloWorld/0]).

helloWorld() ->
  MyRoute = typesystem:plan_route(
  [[
    {0, 0}, {1, 0}, {2, 0},         {4, 0},
    {0, 1},         {2, 1}, {3, 1},
    {0, 2}, {1, 2}
  ]],
  {0,0}, {3, 1}),
  io:fwrite("~w\n", [MyRoute]).
  %exceptions:testExceptions().

%helloWorld() ->
%  io:fwrite("~w ~w\n", [shop:cost(orange), shop:cost(apples, 3)]),
%  io:fwrite("~w\n", [
%    shop:total( [{orange, 2}, {apples, 5}, {pears, 2}] )
%  ]),
%  io:fwrite("~w\n", [fruit:isFruit(orange)]),
%  io:fwrite("~p\n", [fruit:permutations("cats")]),
%  io:fwrite("Evens are ~p\n", [ fruit:odds_and_evens([5,2,-9,3,0,1,4,6,6,9])]).

%% API
