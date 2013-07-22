-module(p11).
-export([encodemodified/1]).

encodemodified(List) -> encodemodified(List, 1).
encodemodified([], _) -> [];
encodemodified([H, H | T], Num) -> encodemodified([H | T], Num + 1);
encodemodified([H | T], 1) -> [ H | encode(T, 1)];
encodemodified([H | T], Num) -> [{Num, H} | encodemodified(T, 1)].
