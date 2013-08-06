-module(p17).
-export([split/2]).

split(List, Num) -> split(List,Num,[]).
split([H | T],0,List1) -> [lists:reverse(List1) , T];
split([H | T],Num,List1) -> split(T,Num-1,[H|List1]).
