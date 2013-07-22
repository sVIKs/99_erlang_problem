-module(p02).
-export([but_last/1]).

but_last(List) -> but_last(List, [], []).
but_last([], A, B) -> [A, B];
but_last([H | T], _A, B) -> but_last(T, B, H).

