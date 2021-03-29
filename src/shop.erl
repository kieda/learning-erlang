%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2021 9:02 AM
%%%-------------------------------------------------------------------
-module(shop).
-author("zkieda").

%% API
-export([cost/1, cost/2, total/1]).

cost(orange) -> 5;
cost(newspaper) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.

cost(Item, Count) -> cost(Item) * Count.

total([{What, N}|T]) -> cost(What, N) + total(T);
total([]) -> 0.



