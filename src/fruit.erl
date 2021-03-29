%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Mar 2021 11:48 AM
%%%-------------------------------------------------------------------
-module(fruit).
-author("zkieda").

%% API
-export([isFruit/1, permutations/1, odds_and_evens/1]).

-define(FRUIT, [apple, pear, orange]).
-record(listInfo, {
  %% evens and odds - default to []
  evens = [], odds = [],
  %% size of list info - default undefined
  size
}).

isFruit(F) -> lists:any(fun(I) -> I =:= F end, ?FRUIT).

permutations([]) -> [[]];
permutations(L) -> [[H|T] || H <- L, T <- permutations(L -- [H])].

odds_and_evens_acc([H|T], Odds, Evens, Size) ->
  case abs(H rem 2) of
    0 -> odds_and_evens_acc(T, Odds, [H|Evens], Size + 1);
    1 -> odds_and_evens_acc(T, [H|Odds], Evens, Size + 1)
  end;
odds_and_evens_acc([], Odds, Evens, Size) -> #listInfo{odds = lists:reverse(Odds), evens = lists:reverse(Evens), size = Size}.

odds_and_evens(L) -> odds_and_evens_acc(L, [], [], 0).



