-module(p13).
-export([decode/1]).

decode([]) -> [];
decode([{0, Str} | T]) -> decode(T);
decode([{Num, Str} | T]) -> [Str | decode([{Num-1, Str} | T])].
