-module(p22).
-export([range/2]).

range(NumE,NumE) -> [NumE];
range(NumS,NumE) -> [NumS| range(NumS+1,NumE)].
