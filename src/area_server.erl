%%%-------------------------------------------------------------------
%%% @author zkieda
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Mar 2021 9:47 AM
%%%-------------------------------------------------------------------
-module(area_server).
-author("zkieda").

%% API
-export([createAreaServer/0]).

createAreaServer() ->
  spawn(area_server, loop, []).

loop() ->
  receive
    {rectangle, Width, Height} ->
      Area = Width * Height,
      io:format("Area of rectangle is ~p\n", Area),
      loop();
    {square, Side} ->
      Area = Side * Side,
      io:format("Area of square is ~p\n", Area),
      loop();
    {circle, Radius} ->
      Area = math:pi() * Radius*Radius,
      io:format("Area of circle is ~p\n", Area),
      loop()
  end.