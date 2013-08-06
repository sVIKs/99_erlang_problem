-module(p20).
-export([remove_at/2]).

remove_at([H|T],1) -> T;
remove_at([H|T],Num) -> [H | remove_at(T,Num-1)].
