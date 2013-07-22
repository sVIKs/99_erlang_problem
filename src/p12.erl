-module(p12).
-export([decodemodified/1]).

decodemodified(List) -> decodemodified(List, 1).
decodemodified([], 1) -> [];
decodemodified([{Num, Str} | T], 1) -> decodemodified([Str | T], Num);
decodemodified([H | T], 1) -> [H | decodemodified(T, 1)];
decodemodified([Str | T], Num) -> [Str | decodemodified([Str | T], Num-1)].
