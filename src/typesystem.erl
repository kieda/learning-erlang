%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Mar 2021 9:21 AM
%%%-------------------------------------------------------------------
-module(typesystem).
-author("zkieda").

%% API
-export([plan_route/3]).

-spec plan_route(BoardRoute :: [point()], PointA :: point(), PointB :: point()) -> route().
-type direction() :: north | south | east | west.
-type point() :: {X :: integer(), Y :: integer()}.
-type route() :: [{go, direction(), integer()}].


% use -opaque name() :: spec
% to specify an opaque type

plan_route(BoardRoute, PointA, PointB) -> [{go, north, 1}].
