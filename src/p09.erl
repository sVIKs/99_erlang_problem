-module(p09).
-export([pack/1]).

pack(List) -> pack(List, []).
pack([], _) -> [];
pack([H, H | T], L) -> pack([H | T], [H | L]);
pack([H | T], L) -> [[H | L] |  pack(T,[] )].
