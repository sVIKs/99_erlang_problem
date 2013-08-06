-module(p21).
-export([delete/3]).

delete(Element, List, 1) -> [Element | List];
delete(Element, [H|T], Num) -> [H | delete(Element, T, Num-1)].
