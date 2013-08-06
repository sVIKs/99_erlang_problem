-module(p21).
-export([insert_at/3]).

insert_at(Element, List, 1) -> [Element | List];
insert_at(Element, [H|T], Num) -> [H | insert_at(Element, T, Num-1)].
